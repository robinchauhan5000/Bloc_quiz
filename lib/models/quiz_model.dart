import 'package:equatable/equatable.dart';

class QuizModel extends Equatable {
  final String? question;
  final List<String>? options;
  final int? correctAnswer;

  QuizModel({
    this.question,
    this.correctAnswer,
    this.options,
  });

  QuizModel copyWith({
    final String? question,
    final List<String>? options,
    final int? correctAnswer,
    final List<QuizModel>? data,
  }) {
    return QuizModel(
      question: question ?? this.question,
      options: options ?? this.options,
      correctAnswer: correctAnswer ?? this.correctAnswer,
    );
  }

  @override
  List<Object?> get props => [question, correctAnswer, options];

  List<QuizModel> data = [
    QuizModel(
      correctAnswer: 0,
      options: [
        'high-level',
        'mid-level',
        'low-level',
        'none of the above',
      ],
      question: 'Python is _____ programming language.',
    ),
    QuizModel(
      correctAnswer: 2,
      options: [
        'TypeScript',
        'Python',
        'Anaconda',
        'Java',
      ],
      question: 'Which of the following is not a programming language?',
    ),
    QuizModel(
      correctAnswer: 3,
      options: [
        'Source code',
        'Bytecode',
        'Machine Code',
        'Hex Code',
      ],
      question:
          'Which of the following is not a type of computer code related to Program Execution?',
    ),
    QuizModel(
      correctAnswer: 2,
      options: [
        'Java',
        'Node.js',
        'Erlang',
        'C',
      ],
      question:
          'WhatsApp concurrent model is implemented using _____ programming language.',
    ),
  ];
}
