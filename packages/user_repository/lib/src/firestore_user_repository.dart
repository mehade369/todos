import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:user_repository/user_repository.dart';

class FirestoreUserRepository implements UserRepository {
  FirestoreUserRepository({
    final FirebaseFirestore? firestore,
  }) : _firestore = firestore ?? FirebaseFirestore.instance;

  final FirebaseFirestore _firestore;

  @override
  Future<void> createUserIfNotExists(final User user) async {
    try {
      /// Trying to get the User's [Document] from the Firestore.
      /// If it doesn't exist, it will create it.
      /// If it does exist, throws an [UserException].

      await _userCollectionRef.doc(user.uid).set(user);
    } on FirebaseException catch (e) {
      log(e.code);

      throw e.toUserException;
    }
  }

  /// delete Document [User user]
  @override
  Future<void> deleteUser(final String uid) async {
    try {
      await _userCollectionRef.doc(uid).delete();
    } on FirebaseException catch (e) {
      log(e.code);

      throw e.toUserException;
    }
  }

  @override
  Future<User?> getUser(final String uid) async {
    try {
      final snapshot = await _userCollectionRef.doc(uid).get();
      return snapshot.data();
    } on FirebaseException catch (e) {
      log(e.code);

      throw e.toUserException;
    }
  }

  /// update [User] , it will create a new one if it doesn't exist
  @override
  Future<void> updateUser(final User user) async {
    try {
      await _userCollectionRef.doc(user.uid).set(user);
    } on FirebaseException catch (e) {
      log(e.code);

      throw e.toUserException;
    }
  }

  /// [User] collection reference
  /// [User]'s `uid` is the document id
  ///
  CollectionReference<User> get _userCollectionRef =>
      _firestore.collection('usersCollection').withConverter<User>(
            fromFirestore: (final documentSnapshot, final options) =>
                User.fromFirestore(documentSnapshot.data()!),
            toFirestore: (final user, final options) => user.toFirestore(),
          );
}

extension _UserExtension on FirebaseException {
  UserException get toUserException => UserException(
        code: code,
        message: message,
        stackTrace: stackTrace,
      );
}
