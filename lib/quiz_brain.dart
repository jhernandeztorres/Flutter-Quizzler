import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('The highest score in Pacman is 3,333,360.', true),
    Question('Pacman was actually called Puckman.', true),
    Question('Zelda is the name of the hero with the sword.', false),
    Question('Assasin\'s Creed is a game that makes sense.', false),
    Question('Tetris started in Russia', true),
    Question('There is a Mario Bros movie.', true),
    Question('The Street Fighter movie was amazingly good.', false),
    Question('Kek means lol in Orc (World of Warcraft).', true),
    Question('Samus Aran is a man in Metroid.', false),
    Question('Disney partnered with Square Enix for Kingdom Hearts.', true),
    Question('Mario and Luigi are actually step-brothers.', false),
    Question('The NES was the first console.', false),
    Question('Masterchief is a badass.', true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber == 12) {
      print('Questions have finished.');
      return true;
    } else {
      return false;
    }
  }

  int reset() {
    return _questionNumber = 0;
  }
}
