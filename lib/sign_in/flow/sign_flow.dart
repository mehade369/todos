import 'package:auth_service/auth_service.dart';
import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todos/sign_in/sign_in.dart';
import 'package:user_repository/user_repository.dart';

class SignFlow extends StatelessWidget {
  const SignFlow({final Key? key}) : super(key: key);

  @override
  Widget build(final BuildContext context) => BlocProvider(
        create: (final context) => SignInCubit(
          authService: context.read<AuthService>(),
          userRepository: context.read<UserRepository>(),
        ),
        child: FlowBuilder<SignFlowState>(
          state: SignFlowState.signIn,
          onGeneratePages: (final state, final _) {
            switch (state) {
              case SignFlowState.signIn:
                return [
                  const MaterialPage<void>(
                    child: SignInPage(),
                  ),
                ];

              case SignFlowState.signUp:
                return [
                  const MaterialPage<void>(
                    child: SignInPage(),
                  ),
                  const MaterialPage<void>(
                    child: SignUpPage(),
                  ),
                ];
            }
          },
        ),
      );
}
