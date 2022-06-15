<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**

- [child_builder](#child_builder)
  - [Using the library](#using-the-library)
  - [Example](#example)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

# child_builder

A builder that provides the ability for UI frameworks to wrap inner widgets so that they can be customized either for look & feel or to assist with things like automated or unit testing.

## Using the library

Add the repo to your Flutter `pubspec.yaml` file.

```
dependencies:
  child_builder: <<version>> 
```

Then run...
```
flutter packages get
```


## Example

```dart
class MyUiFramework extends StatelessWidget {
  MyUiFramework({
    this.childWidgetBuilder;
  }): super(key: key);

  final ChildWidgetBuilder childWidgetBuilder;

  @override
  Widget build(BuildContext context) {
    return ChildBuilder(
      builder: childWidgetBuilder,
      child: MySpiffyUiWidget(),
    );
  }
}


class SomeoneElseWhoUsesMyUiFramework extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MyUiFramework(
      childWidgetBuilder: (BuildContext context, Widget child) {
        return Container(
          // This would allow you to find by key this specific widget
          key: ValueKey('MySpiffyUiWidgetKey'),
          child: child,
        );
      }
    );
  }
}
```