part of 'quiz_bloc.dart';

abstract class QuizEvent extends Equatable {
  const QuizEvent();
  @override
  List<Object> get props => [];
}

class SelectOptionEvent extends QuizEvent {
  final int correctAsnwer;
  List<int> results;

  SelectOptionEvent({this.correctAsnwer});

  @override
  List<Object> get props => [correctAsnwer];
}

class QuizLoadedEvent extends QuizEvent {
  @override
  List<Object> get props => [];
}
