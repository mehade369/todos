import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class BottomSection extends StatelessWidget {
  const BottomSection({
    final Key? key,
    required this.title,
    required this.subtitle,
    required this.onTap,
  }) : super(key: key);

  final VoidCallback onTap;
  final String subtitle;
  final String title;

  @override
  Widget build(final BuildContext context) => Center(
      child: Text.rich(
        TextSpan(
          text: title,
          style: Theme.of(context).textTheme.bodyText1,
          children: [
            TextSpan(
              text: subtitle,
              style: Theme.of(context).textTheme.bodyText1?.copyWith(
                    color: Theme.of(context).primaryColor,
                  ),
              recognizer: TapGestureRecognizer()..onTap = onTap,
            ),
          ],
          recognizer: TapGestureRecognizer()..onTap = onTap,
        ),
      ),
    );
}
