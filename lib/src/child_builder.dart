import 'package:flutter/material.dart';

import 'child_widget_builder.dart';

class ChildBuilder extends StatelessWidget {
  /// A builder that can be used to wrap or otherwise customize child widgets.
  /// The [builder] parameter is optional.
  ///
  /// When performing a build, if the [builder] is not set, this will
  /// immediately return the assigned [child].  When the [builder] is set, this
  /// will pass the [child] to the [builder] and return the result.
  const ChildBuilder({
    super.key,
    this.builder,
    required this.child,
  });

  /// Optional builder that can be used to wrap the [child].
  final ChildWidgetBuilder? builder;

  // Child widget to wrap.
  final Widget child;

  @override
  Widget build(BuildContext context) => builder == null
      ? child
      : builder!(
          context,
          child,
        );
}
