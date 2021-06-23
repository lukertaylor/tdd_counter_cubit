import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:tdd_counter_cubit/app/features/counter/business_logic/increment_counter_state.dart';
import 'package:tdd_counter_cubit/app/features/counter/model/counter.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState(countValue: 0));

  void increment() {
    final CounterState incrementedCounterState =
        incrementCounterState(counterState: state);

    emit(incrementedCounterState);
  }
}
