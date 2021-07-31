import 'package:bloc_quiz/bloc/quiz_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QuizScreen extends StatefulWidget {
  static const route = '/QuizScreen';

  static routeMethod() {
    return MaterialPageRoute(
      builder: (_) => QuizScreen(),
    );
  }

  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  @override
  void initState() {
    super.initState();
    // getList();
  }

  getList() async {
    context.read<QuizBloc>().add(QuizLoadedEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz Game'),
        centerTitle: true,
      ),
      body: BlocBuilder<QuizBloc, QuizState>(
        builder: (context, state) {
          print(state);
          if (state is QuizLoadingState) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is QuizLoadedState) {
            print(state.quizListData[0].question);
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(state.quizListData[0].question),
                Text(state.quizListData[0].options[0]),
                Text(state.quizListData[0].options[1]),
                Text(state.quizListData[0].options[2]),
                Text(state.quizListData[0].options[3]),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Next Question'),
                ),
              ],
            );
          }
          return Text('error');
        },
      ),
    );
  }
}
