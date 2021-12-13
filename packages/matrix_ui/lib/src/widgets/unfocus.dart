import 'package:flutter/material.dart';

class UnFocus extends StatelessWidget {
  const UnFocus({
    final Key? key,
    required final this.child,
  }) : super(key: key);

  final Widget child;
  @override
  Widget build(final BuildContext context) => GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: child,
      );
}
