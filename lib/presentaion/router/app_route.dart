import 'package:bloc_quiz/presentaion/screens/quiz_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case QuizScreen.route:
        return QuizScreen.routeMethod();
        break;
      default:
        return null;
    }
  }
}
