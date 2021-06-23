import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tdd_counter_cubit/cubit/counter_cubit.dart';
import 'package:tdd_counter_cubit/presentation/screens/home_screen.dart';
import 'package:tdd_counter_cubit/presentation/theme/counter_theme.dart';

class CounterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: CounterTheme(),
      home: BlocProvider(
        create: (context) => CounterCubit(),
        child: HomeScreen(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}
