import 'package:flutter/material.dart';
import 'package:matrix_ui/matrix_ui.dart';

class EmailInputFiled extends StatelessWidget {
  const EmailInputFiled({
    final Key? key,
    required final TextEditingController emailController,
  })  : _emailController = emailController,
        super(key: key);

  final TextEditingController _emailController;

  @override
  Widget build(final BuildContext context) => TextFormField(
        controller: _emailController,
        validator: (final value) => value.isValidEmail,
        keyboardType: TextInputType.emailAddress,
        textInputAction: TextInputAction.next,
        textCapitalization: TextCapitalization.none,
        decoration: InputDecoration(
          hintText: 'Email',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      );
}
