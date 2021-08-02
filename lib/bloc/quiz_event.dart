part of 'quiz_bloc.dart';

abstract class QuizEvent extends Equatable {
  const QuizEvent();
  @override
  List<Object?> get props => [];
}

class SelectOptionEvent extends QuizEvent {
  final QuizModel? correctAsnwer;
  final List<int>? results;

  SelectOptionEvent({this.correctAsnwer, this.results});

  @override
  List<Object?> get props => [correctAsnwer, results];
}

class QuizLoadedEvent extends QuizEvent {
  @override
  List<Object> get props => [];
}
