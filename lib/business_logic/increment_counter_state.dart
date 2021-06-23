import 'package:tdd_counter_cubit/cubit/counter_cubit.dart';

CounterState incrementCounterState({required CounterState counterState}) {
  final int incrementedValue = counterState.countValue + 1;
  return CounterState(countValue: incrementedValue);
}
