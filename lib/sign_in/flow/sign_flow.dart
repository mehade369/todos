import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:todos/sign_in/sign_in.dart';
import 'package:todos/sign_up/sign_up.dart';

class SignFlow extends StatelessWidget {
  const SignFlow({final Key? key}) : super(key: key);
  @override
  Widget build(final BuildContext context) => FlowBuilder<SignFlowState>(
        state: SignFlowState.signIn,
        onGeneratePages: (final state, final pages) {
          return [
            const MaterialPage<void>(
              child: SignInPage(),
            ),
            if (state == SignFlowState.signUp)
              const MaterialPage<void>(
                child: SignUpPage(),
              ),
          ];
        },
      );
}
