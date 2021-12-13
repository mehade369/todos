import 'package:flutter/material.dart';

class TopTitle extends StatelessWidget {
  const TopTitle({
    final Key? key,
    required this.subTitle,
  }) : super(key: key);

  final String subTitle;

  @override
  Widget build(final BuildContext context) {
    return Text.rich(
      TextSpan(
        text: 'Quiz',
        style: const TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.bold,
        ),
        children: [
          TextSpan(
            text: 'zi',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          const TextSpan(
            text: '!',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          const TextSpan(
            text: '\n',
            style: TextStyle(
              fontSize: 40,
            ),
          ),
          TextSpan(
            text: subTitle,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
