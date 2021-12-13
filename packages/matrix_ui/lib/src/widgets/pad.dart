import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Pad extends SingleChildRenderObjectWidget {
  const Pad._({
    final Key? key,
    required final Widget child,
    this.padding = EdgeInsets.zero,
  }) : super(key: key, child: child);

  // small

  factory Pad.small({
    final Key? key,
    required final Widget child,
  }) =>
      Pad._(key: key, padding: const EdgeInsets.all(8), child: child);

  // medium

  factory Pad.medium({
    final Key? key,
    required final Widget child,
  }) =>
      Pad._(key: key, padding: const EdgeInsets.all(16), child: child);

  // large

  factory Pad.large({
    final Key? key,
    required final Widget child,
  }) =>
      Pad._(key: key, padding: const EdgeInsets.all(24), child: child);

  /// The amount of space by which to inset the child.
  final EdgeInsetsGeometry padding;
  @override
  RenderObject createRenderObject(final BuildContext context) {
    return RenderPadding(
      padding: padding,
      textDirection: Directionality.maybeOf(context),
    );
  }

  @override
  void updateRenderObject(
    final BuildContext context,
    final RenderPadding renderObject,
  ) {
    renderObject
      ..padding = padding
      ..textDirection = Directionality.maybeOf(context);
  }
}
