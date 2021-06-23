import 'package:tdd_counter_cubit/cubit/counter_cubit.dart';

CounterState incrementCounterState({required CounterState counter}) {
  final int incrementedValue = counter.countValue + 1;
  return CounterState(countValue: incrementedValue);
}
