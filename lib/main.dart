import 'package:bloc_quiz/bloc/quiz_bloc.dart';
import 'package:bloc_quiz/presentaion/router/app_route.dart';
import 'package:bloc_quiz/presentaion/screens/quiz_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => QuizBloc(),
      child: MaterialApp(
        title: 'Flutter Quiz',
        onGenerateRoute: AppRouter.onGenerateRoute,
        initialRoute: QuizScreen.route,
      ),
    );
  }
}
