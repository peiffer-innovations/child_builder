import 'package:flutter/material.dart';

/// Builder function that accepts the current build context as well as the
/// [child]  widget that can be customized or wrapped.
typedef ChildWidgetBuilder = Widget Function(
  BuildContext context,
  Widget child,
);
