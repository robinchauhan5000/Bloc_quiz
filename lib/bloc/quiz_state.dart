part of 'quiz_bloc.dart';

abstract class QuizState extends Equatable {
  QuizState();
  List<Object?> get props => [];
}

class QuizInitialState extends QuizState {}

class QuizLoadingState extends QuizState {}

class QuizLoadedState extends QuizState {
  final List<QuizModel>? quizListData;

  QuizLoadedState({this.quizListData});

  @override
  List<Object?> get props => [quizListData];
}

class CorrectedAnswerTappedState extends QuizState {}

class IncorrectAnswerTappedState extends QuizState {}
