import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tdd_counter_cubit/cubit/counter_cubit.dart';

main() {
  late CounterCubit counterCubit;
  group('CounterCubit', () {
    setUp(() {
      counterCubit = CounterCubit();
    });

    test('CounterState countValue has an initial state of 0', () {
      expect(counterCubit.state.countValue, 0);
    });
  });
  group('increment', () {
    blocTest<CounterCubit, CounterState>(
      'emits CounterState with countValue of 1 when initial state is 0',
      build: () => CounterCubit(),
      act: (counterCubit) => counterCubit.increment(),
      expect: () => const <CounterState>[CounterState(countValue: 1)],
    );
    blocTest<CounterCubit, CounterState>(
      'emits CounterState with countValue of 1 then 2 when initial state is 0 and incremented twice',
      build: () => CounterCubit(),
      act: (counterCubit) => counterCubit..increment()..increment(),
      expect: () => const <CounterState>[
        CounterState(countValue: 1),
        CounterState(countValue: 2)
      ],
    );
  });
}
