import 'package:flutter/material.dart';
import 'package:matrix_ui/matrix_ui.dart';

class PasswordInputField extends StatefulWidget {
  const PasswordInputField({
    final Key? key,
    required this.passwordController,
  }) : super(key: key);

  final TextEditingController passwordController;

  @override
  State<PasswordInputField> createState() => _PasswordInputFieldState();
}

class _PasswordInputFieldState extends State<PasswordInputField> {
  bool isObscured = true;

  @override
  Widget build(final BuildContext context) => TextFormField(
        controller: widget.passwordController,
        validator: (final value) => value.isValidPassword,
        keyboardType: TextInputType.visiblePassword,
        textInputAction: TextInputAction.done,
        textCapitalization: TextCapitalization.none,
        decoration: InputDecoration(
          hintText: 'Password',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          suffixIcon: IconButton(
            splashRadius: 10,
            icon: AnimatedSwitcher(
              duration: const Duration(milliseconds: 400),
              child: isObscured
                  ? const Icon(
                      Icons.visibility_off,
                      key: Key('visibility_off'),
                    )
                  : const Icon(
                      Icons.visibility,
                      key: Key('visibility'),
                    ),
              transitionBuilder: (
                final child,
                final animation,
              ) =>
                  FadeTransition(
                opacity: animation,
                child: child,
              ),
            ),
            onPressed: () => setState(() => isObscured = !isObscured),
          ),
        ),
        obscureText: isObscured,
      );
}
