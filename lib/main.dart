import 'package:auth_service/auth_service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:todo_repository/todo_repository.dart';
import 'package:todos/bootstrap.dart';
import 'package:todos/firebase_options.dart';
import 'package:user_repository/user_repository.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  final authService = FirebaseAuthService();

  /// We only listen for the first element of the stream,
  /// and dispose the stream after that.
  ///
  /// This is because we only want to cache the authUser ASAP.
  /// So, when the AuthBloc call `currentUser` to check if the user is
  /// logged in or not, we get the previous cached user.
  ///
  await authService.onAuthStateChanged.first;

  await bootstrap(
    authService: authService,
    userRepository: FirestoreUserRepository(),
    todoRepository: FirestoreTodoRepository(),
  );
}
