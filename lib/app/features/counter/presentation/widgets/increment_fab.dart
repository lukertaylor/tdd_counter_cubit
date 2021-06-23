import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tdd_counter_cubit/app/features/counter/cubit/counter_cubit.dart';

class IncrementFloatingActionButton extends StatelessWidget {
  const IncrementFloatingActionButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      key: const Key('increment_control'),
      onPressed: () => context.read<CounterCubit>().increment(),
      tooltip: 'Increment',
      child: Icon(Icons.add),
    );
  }
}
