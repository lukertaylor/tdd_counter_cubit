import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tdd_counter_cubit/app/features/counter/cubit/counter_cubit.dart';
import 'package:tdd_counter_cubit/app/features/counter/presentation/widgets/increment_fab.dart';

class CounterScreen extends StatelessWidget {
  CounterScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            BlocBuilder<CounterCubit, CounterState>(
              builder: (context, state) {
                return Text(
                  '${state.countValue}',
                  key: const Key('count_value_text'),
                  style: Theme.of(context).textTheme.headline4,
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: IncrementFloatingActionButton(),
    );
  }
}
