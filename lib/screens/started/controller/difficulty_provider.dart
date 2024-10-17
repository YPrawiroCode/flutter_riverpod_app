import 'package:flutter_riverpod/flutter_riverpod.dart';

class Difficulty extends Notifier<String> {
  @override
  String build() {
    return 'Easy';
  }

  void difficultyQuiz(value) {
    state = value;
  }

  // void decrease() {
  //   state--;
  // }
}

final difficultyProvider = NotifierProvider<Difficulty, String>(Difficulty.new);
