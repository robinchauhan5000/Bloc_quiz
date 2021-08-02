import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_quiz/models/quiz_model.dart';
import 'package:equatable/equatable.dart';

part 'quiz_event.dart';
part 'quiz_state.dart';

class QuizBloc extends Bloc<QuizEvent, QuizState> {
  QuizBloc({QuizModel? quizModel})
      : assert(quizModel != null),
        _quizModel = quizModel,
        super(QuizInitialState());

  QuizModel? _quizModel;
  List<QuizModel>? quizListModel;

  @override
  Stream<QuizState> mapEventToState(
    QuizEvent event,
  ) async* {
    print(_quizModel?.data.length);
    yield QuizLoadingState();
    quizListModel = _quizModel?.data;

    if (state is QuizLoadedEvent) {
      yield QuizLoadedState(quizListData: quizListModel);
    }

    if (event is SelectOptionEvent) {}
  }
}
// if (event.correctAsnwer == _quizModel) {
// yield CorrectedAnswerTappedState();
// } else {
// yield IncorrectAnswerTappedState();
// }
