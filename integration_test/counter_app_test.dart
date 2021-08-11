import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import './counter_app.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Counter feature', () {
    testWidgets('tap on the floating action button; verify counter',
        (WidgetTester tester) async {
      app.main();
      await tester.pumpAndSettle();

      // Finds the floating action button to tap on.
      final Finder fab = find.byTooltip('Increment');

      // Emulate a tap on the floating action button.
      await tester.tap(fab);

      await tester.pumpAndSettle();

      expect(find.text('1'), findsOneWidget);
    });
    // final counterValueTextFinder = find.byValueKey('count_value_text');
    // final incrementControlFinder = find.byValueKey('increment_control');

    // // setUpAll(() async {
    // //   driver = await FlutterDriver.connect();
    // // });

    // // tearDownAll(() async {
    // //   driver.close();
    // // });

    // test('counter value text starts at 0', () async {
    //   // Use the `driver.getText` method to verify the counter starts at 0.
    //   expect(await driver.getText(counterValueTextFinder), "0");
    // });

    // test('increment control is tapped and counter value text becomes 1',
    //     () async {
    //   // First, tap the button.
    //   await driver.tap(incrementControlFinder);

    //   // Then, verify the counter text is incremented by 1.
    //   expect(await driver.getText(counterValueTextFinder), "1");
    // });
  });
}
