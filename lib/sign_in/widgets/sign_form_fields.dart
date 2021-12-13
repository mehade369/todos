import 'package:flutter/material.dart';

class SignFormFields extends StatelessWidget {
  const SignFormFields({
    final Key? key,
    required this.children,
    required this.formKey,
  }) : super(key: key);

  final List<Widget> children;
  final GlobalKey<FormState> formKey;

  @override
  Widget build(final BuildContext context) => Form(
        key: formKey,
        child: Center(
          child: Material(
            color: Colors.white.withOpacity(0.1),
            child: ListView(
              padding: const EdgeInsets.all(30),
              shrinkWrap: true,
              children: children,
            ),
          ),
        ),
      );
}
