import 'package:child_builder/child_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('no builder', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: ChildBuilder(
            child: Text('Hello World!'),
          ),
        ),
      ),
    );

    final found = find.text('Hello World!');

    expect(found, findsOneWidget);
  });

  testWidgets('wrapped in column', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: ChildBuilder(
            builder: (BuildContext context, Widget child) => Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                child,
                const Text('Hello Universe!'),
              ],
            ),
            child: const Text('Hello World!'),
          ),
        ),
      ),
    );

    final world = find.text('Hello World!');
    final universe = find.text('Hello Universe!');

    expect(world, findsOneWidget);
    expect(universe, findsOneWidget);
  });
}
