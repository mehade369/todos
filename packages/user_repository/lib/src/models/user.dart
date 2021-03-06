import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

/// Represents a user's profile in the database.
@freezed
class User with _$User {
  const factory User.__({
    /// user's unique ID, generated by Firebase Auth.
    /// This is used to identify the user doc in the database.
    required final String uid,
    required final String email,
    required final String displayName,
    required final String photoUrl,
    required final DateTime createdAt,
    // required final DateTime updatedAt,
    // required final DateTime lastSignIn,
  }) = _User;

  const User._();

  factory User.createUser({
    required final String uid,
    required final String email,
    required final String? displayName,
    required final String? photoUrl,
    final DateTime? createdAt,
  }) =>
      User.__(
        uid: uid,
        email: email,
        displayName: displayName ?? 'Obi-Wan',
        photoUrl: photoUrl ??
            'https://cdn-icons-png.flaticon.com/512/3667/3667193.png',
        createdAt: createdAt ?? DateTime.now(),
      );

  factory User.fromFirestore(
    final Map<String, dynamic> json,
  ) =>
      User.__(
        uid: json['uid'] as String,
        email: json['email'] as String,
        displayName: json['displayName'] as String,
        photoUrl: json['photoUrl'] as String,
        createdAt: (json['createdAt'] as Timestamp).toDate(),
      );

  Map<String, dynamic> toFirestore() => <String, dynamic>{
        'uid': uid,
        'email': email,
        'displayName': displayName,
        'photoUrl': photoUrl,
        'createdAt': Timestamp.fromDate(createdAt),
      };
}
