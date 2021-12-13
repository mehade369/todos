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
  await bootstrap(
    authService: FirebaseAuthService(),
    userRepository: FirestoreUserRepository(),
    todoRepository: FirestoreTodoRepository(),
  );
}
