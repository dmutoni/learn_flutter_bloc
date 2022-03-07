import 'package:flutter/material.dart';
import 'package:learn_flutter_bloc/presentation/screens/home_screen.dart';
import 'package:learn_flutter_bloc/presentation/screens/second_screen.dart';
import 'package:learn_flutter_bloc/presentation/screens/third_screen.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (_) =>
                const HomeScreen(title: 'First screen', color: Colors.blue));
      case '/second':
        return MaterialPageRoute(
            builder: (_) => const SecondScreen(
                title: 'Second screen', color: Colors.green));
      case '/third':
        return MaterialPageRoute(
            builder: (_) =>
                const ThirdScreen(title: 'Third screen', color: Colors.red));
      default:
        return null;
    }
  }
}
