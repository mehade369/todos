import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatelessWidget {
  const Loading({final Key? key}) : super(key: key);
  @override
  Widget build(final BuildContext context) => SpinKitFadingFour(
        color: Theme.of(context).primaryColor,
      );
}
