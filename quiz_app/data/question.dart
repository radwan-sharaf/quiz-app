class Question{
  String question;
  List<Answersanswers> answers;
   String correctAnswersanswers;
  Question({
required this.question,
required this.answers,
required this.correctAnswersanswers,

  });
}

class Answersanswers{
String identifier;
String answers;
Answersanswers({required this.identifier,required this.answers});
}
List<Question> quizData=[

  Question(
    question: 'Which language is used for styling web pages?',
    answers: [
      Answersanswers(identifier: 'A', answers: 'HTML'),
      Answersanswers(identifier: 'B', answers: 'CSS'),
      Answersanswers(identifier: 'C', answers: 'JavaScript'),
      Answersanswers(identifier: 'D', answers: 'Python'),
    ],
    correctAnswersanswers: 'B',
  ),
  Question(
    question: 'What is the output of `2 + 2 * 2` in most programming languages?',
    answers: [
      Answersanswers(identifier: 'A', answers: '6'),
      Answersanswers(identifier: 'B', answers: '8'),
      Answersanswers(identifier: 'C', answers: '4'),
      Answersanswers(identifier: 'D', answers: '10'),
    ],
    correctAnswersanswers: 'A',
  ),
  Question(
    question: 'What is the correct way to declare a variable in Python?',
    answers: [
      Answersanswers(identifier: 'A', answers: 'var x = 10'),
      Answersanswers(identifier: 'B', answers: 'int x = 10'),
      Answersanswers(identifier: 'C', answers: 'x = 10'),
      Answersanswers(identifier: 'D', answers: 'let x = 10'),
    ],
    correctAnswersanswers: 'C',
  ),
  Question(
    question: 'Which of the following is NOT a programming language?',
    answers: [
      Answersanswers(identifier: 'A', answers: 'Java'),
      Answersanswers(identifier: 'B', answers: 'Python'),
      Answersanswers(identifier: 'C', answers: 'HTML'),
      Answersanswers(identifier: 'D', answers: 'C++'),
    ],
    correctAnswersanswers: 'C',
  ),
  Question(
    question: 'What is the purpose of a `for` loop?',
    answers: [
      Answersanswers(identifier: 'A', answers: 'To define a function'),
      Answersanswers(identifier: 'B', answers: 'To repeat a block of code'),
      Answersanswers(identifier: 'C', answers: 'To handle errors'),
      Answersanswers(identifier: 'D', answers: 'To create a variable'),
    ],
    correctAnswersanswers: 'B',
  ),

  Question(
    question: 'Which data structure uses the LIFO (Last In, First Out) principle?',
    answers: [
      Answersanswers(identifier: 'A', answers: 'Queue'),
      Answersanswers(identifier: 'B', answers: 'Stack'),
      Answersanswers(identifier: 'C', answers: 'Array'),
      Answersanswers(identifier: 'D', answers: 'Linked List'),
    ],
    correctAnswersanswers: 'B',
  ),
  Question(
    question: 'What is the time complexity of accessing an element in an array?',
    answers: [
      Answersanswers(identifier: 'A', answers: 'O(1)'),
      Answersanswers(identifier: 'B', answers: 'O(n)'),
      Answersanswers(identifier: 'C', answers: 'O(log n)'),
      Answersanswers(identifier: 'D', answers: 'O(n²)'),
    ],
    correctAnswersanswers: 'A',
  ),


];