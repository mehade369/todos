import 'package:flutter/material.dart';
import 'package:matrix_ui/matrix_ui.dart';
import 'package:todos/sign_in/sign_in.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({final Key? key}) : super(key: key);

  @override
  Widget build(final BuildContext context) => const UnFocus(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: SafeArea(
            minimum: EdgeInsets.all(26),
            child: SignUpView(),
          ),
        ),
      );
}
