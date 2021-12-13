import 'package:flutter/material.dart';

class Error extends StatelessWidget {
  const Error(
    this.message, {
    final Key? key,
  }) : super(key: key);

  final String message;

  @override
  Widget build(final BuildContext context) => Container(
        padding: const EdgeInsets.all(16),
        child: Text.rich(
          TextSpan(
            text: '⚠️',
            style: Theme.of(context).textTheme.headline6,
            children: [
              TextSpan(
                text: ' $message',
                style: Theme.of(context).textTheme.headline6?.copyWith(
                      fontWeight: FontWeight.w300,
                    ),
              ),
            ],
          ),
        ),
      );
}
