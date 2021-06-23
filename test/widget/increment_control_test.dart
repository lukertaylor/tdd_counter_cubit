// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tdd_counter_cubit/app/counter_app.dart';

void main() {
  testWidgets(
      'Given the counter starts at 0, when the increment control is tapped then the counter text shows 1',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(CounterApp());

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byKey(Key('increment_control')));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
  testWidgets(
      'Given the counter starts at 0, when the increment control is tapped twice then the counter text shows 2',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(CounterApp());

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);
    expect(find.text('2'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byKey(Key('increment_control')));
    await tester.pump();
    await tester.tap(find.byKey(Key('increment_control')));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsNothing);
    expect(find.text('2'), findsOneWidget);
  });
}
