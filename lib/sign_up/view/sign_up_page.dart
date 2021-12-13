import 'package:auth_service/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:matrix_ui/matrix_ui.dart';
import 'package:todos/sign_up/sign_up.dart';
import 'package:user_repository/user_repository.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({final Key? key}) : super(key: key);
  @override
  Widget build(final BuildContext context) => BlocProvider(
        create: (final context) => SignUpCubit(
          authService: context.read<AuthService>(),
          userRepository: context.read<UserRepository>(),
        ),
        child: const UnFocus(
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SafeArea(
              minimum: EdgeInsets.all(26),
              child: SignUpView(),
            ),
          ),
        ),
      );
}
