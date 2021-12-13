import 'dart:async';
import 'dart:developer';

import 'package:auth_service/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_repository/todo_repository.dart';
import 'package:todos/app/view/app.dart';
import 'package:user_repository/user_repository.dart';

Future<void> bootstrap({
  required final AuthService authService,
  required final UserRepository userRepository,
  required final TodoRepository todoRepository,
}) async {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      //! iOS only
      statusBarBrightness: Brightness.light,

      // Android only - Top bar color
      statusBarIconBrightness: Brightness.light,
      statusBarColor: Colors.black12,

      // Android only - Bottom Nav Color
      systemNavigationBarColor: Colors.black12,
      systemNavigationBarIconBrightness: Brightness.light,
      // Android only - The Divider between SystemNav and The App
      systemNavigationBarDividerColor: Colors.black12,

      // systemStatusBarContrastEnforced: true,
      // systemNavigationBarContrastEnforced: true,
    ),
  );
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  BlocOverrides.runZoned(
    () {
      runApp(
        App(
          authService: authService,
          userRepository: userRepository,
          todoRepository: todoRepository,
        ),
      );
    },
    blocObserver: MyBlocObserver(),
  );
}

class MyBlocObserver implements BlocObserver {
  @override
  void onChange(final BlocBase bloc, final Change change) {
    log('onChange -- ${bloc.runtimeType}, $change');
  }

  @override
  void onClose(final BlocBase bloc) {
    log('onClose -- ${bloc.runtimeType}');
  }

  @override
  void onCreate(final BlocBase bloc) {
    log('onCreate -- ${bloc.runtimeType}');
  }

  @override
  void onError(
    final BlocBase bloc,
    final Object error,
    final StackTrace stackTrace,
  ) {
    log('onError -- ${bloc.runtimeType}, $error, $stackTrace');
  }

  @override
  void onEvent(final Bloc bloc, final Object? event) {
    log('onEvent -- ${bloc.runtimeType}, $event');
  }

  @override
  void onTransition(
    final Bloc bloc,
    final Transition transition,
  ) {
    log('onTransition -- ${bloc.runtimeType}, $transition');
  }
}