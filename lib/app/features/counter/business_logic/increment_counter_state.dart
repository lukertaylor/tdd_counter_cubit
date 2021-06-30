import 'package:tdd_counter_cubit/app/features/counter/cubit/counter_cubit.dart';

CounterState incrementCounterState({required CounterState counterState}) {
  final int incrementedValue = counterState.countValue + 1;
  final CounterState incrementedCounterState =
      CounterState(countValue: incrementedValue);
  return incrementedCounterState;
}
