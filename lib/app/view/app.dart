import 'package:auth_service/auth_service.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_repository/todo_repository.dart';
import 'package:todos/app/app.dart';
import 'package:user_repository/user_repository.dart';

class App extends StatelessWidget {
  const App({
    final Key? key,
    required final AuthService authService,
    required final UserRepository userRepository,
    required final TodoRepository todoRepository,
  })  : _authService = authService,
        _userRepository = userRepository,
        _todoRepository = todoRepository,
        super(key: key);

  final AuthService _authService;
  final UserRepository _userRepository;
  final TodoRepository _todoRepository;

  @override
  Widget build(final BuildContext context) => MultiRepositoryProvider(
        providers: [
          RepositoryProvider.value(value: _authService),
          RepositoryProvider.value(value: _userRepository),
          RepositoryProvider.value(value: _todoRepository),
        ],
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (final _) => AuthBloc(
                authService: _authService,
              ),
            ),
          ],
          child: const _AppView(),
        ),
      );
}

class _AppView extends StatelessWidget {
  const _AppView({
    final Key? key,
  }) : super(key: key);

  @override
  Widget build(final BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todos',
      theme: FlexColorScheme.dark(
        appBarElevation: 2,
        scheme: FlexScheme.amber,
        fontFamily: GoogleFonts.lato().fontFamily,
      ).toTheme,
      home: const UserFlow(),
    );
  }
}
