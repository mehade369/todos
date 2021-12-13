import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:todo_repository/todo_repository.dart';

class FirestoreTodoRepository implements TodoRepository {
  FirestoreTodoRepository({
    final FirebaseFirestore? firestore,
  }) : _firestore = firestore ?? FirebaseFirestore.instance;

  final FirebaseFirestore _firestore;

  @override
  Future<void> addTodo(final Todo todo) async {
    try {
      /// if the document , with the given uid , does not exist , create it
      await _todoCollection.doc(todo.uid).set(todo);
    } on FirebaseException catch (e) {
      log(e.code);
      throw e.toTodoException;
    }
  }

  @override
  Future<void> clearCompleted() {
    throw UnimplementedError();
  }

  @override
  Future<void> deleteTodo(final Todo todo) async {
    try {
      return _todoCollection.doc(todo.uid).delete();
    } on FirebaseException catch (e) {
      log(e.code);
      throw e.toTodoException;
    }
  }

  Future<Todo?> getTodo(final String docID) async {
    try {
      final doc = await _todoCollection.doc(docID).get();

      return doc.data();
    } on FirebaseException catch (e) {
      log(e.code);
      throw e.toTodoException;
    }
  }

  @override
  Stream<List<Todo>> todos(final String userID) {
    try {
      return _todoCollection
          .where(
            'userUid',
            isEqualTo: userID,
          )
          .snapshots()
          .map(
            (final querySnapshot) => querySnapshot.docs
                .map(
                  (final queryDocumentSnapshot) => queryDocumentSnapshot.data(),
                )
                .toList(),
          );
    } on FirebaseException catch (e) {
      log(e.code);
      throw e.toTodoException;
    }
  }

  @override
  Future<void> updateTodo(final Todo todo) async {
    try {
      await _todoCollection.doc(todo.uid).set(todo);
    } on FirebaseException catch (e) {
      log(e.code);
      throw e.toTodoException;
    }
  }


  CollectionReference<Todo> get _todoCollection =>
      _firestore.collection('todosCollection').withConverter(
            fromFirestore: (final doc, final options) =>
                Todo.fromFirestore(doc.data()!),
            toFirestore: (final todo, final options) => todo.toFirestore(),
          );
}

extension _UserExtension on FirebaseException {
  TodoException get toTodoException => TodoException(
        code: code,
        message: message,
        stackTrace: stackTrace,
      );
}
