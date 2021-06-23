import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/counter/cubit/counter_cubit.dart';
import 'features/counter/presentation/screens/counter_screen.dart';
import 'features/counter/presentation/theme/counter_theme.dart';

class CounterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: counterTheme(),
      home: BlocProvider(
        create: (context) => CounterCubit(),
        child: CounterScreen(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}
