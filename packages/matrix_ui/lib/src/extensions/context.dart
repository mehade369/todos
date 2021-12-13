import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  void showSnackBar(final String message) => ScaffoldMessenger.of(this)
    ..hideCurrentSnackBar()
    ..showSnackBar(
      SnackBar(
        content: Text(message),
        behavior: SnackBarBehavior.floating,
        onVisible: FocusManager.instance.primaryFocus?.unfocus,
      ),
    );
}
