import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tdd_counter_cubit/cubit/counter_cubit.dart';

main() {
  late CounterCubit counterCubit;
  group('CounterCubit', () {
    setUp(() {
      counterCubit = CounterCubit();
    });

    test('has an initial state of 0', () {
      expect(counterCubit.state, 0);
    });
  });
  group('increment', () {
    blocTest<CounterCubit, int>(
      'emits [1] when initial state is 0',
      build: () => CounterCubit(),
      act: (counterCubit) => counterCubit.increment(),
      expect: () => const <int>[1],
    );
    blocTest<CounterCubit, int>(
      'emits [1, 2] when initial state is 0 and incremented twice',
      build: () => CounterCubit(),
      act: (counterCubit) => counterCubit..increment()..increment(),
      expect: () => const <int>[1, 2],
    );
  });
}
