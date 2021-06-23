import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('Counter feature', () {
    final counterValueTextFinder = find.byValueKey('count_value_text');
    final incrementControlFinder = find.byValueKey('increment_control');
    late FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() async {
      driver.close();
    });

    test('counter value text starts at 0', () async {
      // Use the `driver.getText` method to verify the counter starts at 0.
      expect(await driver.getText(counterValueTextFinder), "0");
    });

    test('increment control is tapped and counter value text becomes 1',
        () async {
      // First, tap the button.
      await driver.tap(incrementControlFinder);

      // Then, verify the counter text is incremented by 1.
      expect(await driver.getText(counterValueTextFinder), "1");
    });
  });
}
