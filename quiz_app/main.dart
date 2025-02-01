import 'package:flutter/material.dart' ;
import 'package:flutter_application_1/quiz_app/signIn_signUp_app/login1.dart';
import 'package:flutter_application_1/quiz_app/ui/quiz_page.dart';


void main() {

  runApp( Application());
}

class Application extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
home: QuizPage(),


    );
    
  }
}
