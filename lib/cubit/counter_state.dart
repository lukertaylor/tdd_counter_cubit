part of 'counter_cubit.dart';

class CounterState extends Equatable implements Counter {
  const CounterState({required this.countValue});

  final int countValue;

  @override
  List<Object> get props => [countValue];
}
