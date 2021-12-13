import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

// Creates a Vertical Gap between the widgets
// If you want to specify the height of the gap, use SizedBox
class Gap extends SingleChildRenderObjectWidget {
  const Gap._({
    final Key? key,
    this.width = 0.0,
    this.height = 0.0,
    required final Widget child,
  }) : super(key: key, child: child);

  factory Gap.small({
    final Key? key,
    required final Widget child,
  }) =>
      Gap._(key: key, width: double.infinity, height: 8, child: child);

  factory Gap.medium({
    final Key? key,
    required final Widget child,
  }) =>
      Gap._(key: key, width: double.infinity, height: 16, child: child);

  factory Gap.large({
    final Key? key,
    required final Widget child,
  }) =>
      Gap._(key: key, width: double.infinity, height: 24, child: child);

  final double width;
  final double height;

  @override
  RenderObject createRenderObject(final BuildContext context) =>
      RenderConstrainedBox(
        additionalConstraints: _additionalConstraints,
      );

  /// from Our width and height we, create a BoxConstraints
  BoxConstraints get _additionalConstraints =>
      BoxConstraints.tightFor(width: width, height: height);

  @override
  void updateRenderObject(
    final BuildContext context,
    final RenderConstrainedBox renderObject,
  ) =>
      renderObject.additionalConstraints = _additionalConstraints;
}
