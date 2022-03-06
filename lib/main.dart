import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_flutter_bloc/logic/cubit/counter_cubit.dart';
import 'package:learn_flutter_bloc/presentation/screens/home_screen.dart';
import 'package:learn_flutter_bloc/presentation/screens/second_screen.dart';
import 'package:learn_flutter_bloc/presentation/screens/third_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final CounterCubit _counterCubit = CounterCubit();

  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterCubit>(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {
          '/': (context) => BlocProvider.value(
                value: _counterCubit,
                child: const HomeScreen(
                  color: Colors.blue,
                  title: 'Home screen',
                ),
              ),
          '/second': (context) => BlocProvider.value(
                value: _counterCubit,
                child: const SecondScreen(
                  color: Colors.green,
                  title: 'Second screen',
                ),
              ),
          '/third': (context) => BlocProvider.value(
                value: _counterCubit,
                child: const ThirdScreen(
                  color: Colors.red,
                  title: 'Third screen',
                ),
              ),
        },
      ),
    );
  }
}
