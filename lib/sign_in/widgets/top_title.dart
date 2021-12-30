import 'package:flutter/material.dart';

class TopTitle extends StatelessWidget {
  const TopTitle({
    final Key? key,
    required this.subTitle,
    required this.title,
  }) : super(key: key);

  final String subTitle;
  final String title;

  @override
  Widget build(final BuildContext context) => Text.rich(
        TextSpan(
          text: title.substring(0, 2),
          style: Theme.of(context).textTheme.headline3,
          children: [
            TextSpan(
              text: title.substring(2),
              style: Theme.of(context).textTheme.headline3?.copyWith(
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
            ),
            TextSpan(
              text: subTitle,
              style: Theme.of(context).textTheme.headline6?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
            ),
          ],
        ),
      );
}
