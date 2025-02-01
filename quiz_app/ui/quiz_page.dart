

import 'package:flutter/material.dart';
import 'package:flutter_application_1/quiz_app/widgets/Big_texr.dart';
import 'package:flutter_application_1/quiz_app/data/question.dart';
import 'package:flutter_application_1/quiz_app/ui/result_page.dart';
import 'dart:async';
import 'package:flutter_application_1/quiz_app/widgets/small_text.dart';

class QuizPage extends StatefulWidget {
   QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
     int questionNumber=0;
    int? selectAnswer;
    int correctAnswer =0;
    int wrongAnswer=0;
   


  @override
  Widget build(BuildContext context) {
    return Scaffold(

body: Container(
  padding: EdgeInsets.only(top: 70,
  left: 20,
  right:20,
  bottom: 20,
  
  ),
decoration: BoxDecoration(
gradient: LinearGradient(
  
  begin: Alignment.bottomLeft,
  end: Alignment.centerRight,
  colors: [

Colors.black,

   Colors.blue,
Colors.black,

]),

),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
  children: [
BigText(
  
     quizData[questionNumber].question,
    
      ),
    
  

SizedBox(
  height: 10,
),
SmallText("Nummber of Question : ${questionNumber+1} of ${quizData.length}",

),
SizedBox(
  height: 35,
),
Padding(
  padding:  EdgeInsets.symmetric(horizontal: 0),
  child: Container(
    
    alignment: Alignment.topLeft,
    width: double.infinity,
    decoration: BoxDecoration(shape: BoxShape.rectangle,
    color: Colors.black,
   
    gradient: LinearGradient(colors: [
   Colors.red,
   Colors.amber,
    
    ]),
    borderRadius: BorderRadius.circular(20),
    ),
    child: Center(
 
    
    ),
   
  
  ),
),
SizedBox(
  height: 20,
),
Expanded(
  child: Container(
    padding: EdgeInsets.only(
      top:30,
      left: 20,
      right: 20,
      bottom: 30,
    ),
    decoration: BoxDecoration(
color: Color.fromARGB(67, 255, 255, 255),
borderRadius: BorderRadius.circular(20),
    ),
    child: Column(
      children: [
  Text(
    selectAnswer==null?'':'Select answer: ${quizData[questionNumber].answers[selectAnswer!].identifier} ',style: TextStyle(fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                ),
                ),
 SizedBox(
  height: 25,
),
        Expanded(
          child: ListView.builder(
            
            itemCount: quizData[questionNumber].answers.length,
            physics:  NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index){
            return Padding(
              padding:  EdgeInsets.only(bottom: 25),
              child: InkWell(
                onTap: (){
                  setState(() {
                  selectAnswer=index;  
                  });
                  
                },
                child: Container(
                height: 55,
                padding:  EdgeInsets.symmetric(horizontal: 10,),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                color: selectAnswer==index?Colors.amber:Colors.white,
                      ),
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text(
                      '${quizData[questionNumber].answers[index].identifier}:',
                      style: TextStyle(
                        fontSize: 22,
                        color: selectAnswer==index?Colors.white:Colors.black,
                    fontWeight: FontWeight.bold
                    ),), 
                
                 Text('${quizData[questionNumber].answers[index].answers}:',
                 style: TextStyle(
                  fontSize: 20,
                    fontWeight: FontWeight.bold,
                     color: selectAnswer==index?Colors.white:Colors.black,
                    ),),
             selectAnswer==index?   Stack(
                  alignment: Alignment.center,
                  children: [
                    Icon(Icons.circle_outlined,size: 24,
                    color: Colors.white,
                    ),
                        Icon(Icons.circle,size: 12,
                        color: Colors.white,
                    
                    ),
                  ],
                ):    Icon(Icons.circle_outlined,size: 24,
                    
                    ),
                  ],
                  ),
                ),
              ),
            );
          }),
        ),
      ],
    ),
  ),
),

const SizedBox(
  height: 60,
),
/*MaterialButton(onPressed: 
  _startCountDown,
),*/

InkWell(
  
  onTap: (){
   
 
    if(quizData[questionNumber]
    .answers[selectAnswer!]
    .identifier==quizData[questionNumber]
    .correctAnswersanswers)
    {
      correctAnswer++;
      print("correct : $correctAnswer");
    }else{
      wrongAnswer++;
      print('not correct : $wrongAnswer');
    }
    if(questionNumber<quizData.length-1){
  setState(() {
      questionNumber++;
      selectAnswer = null;
    });
    }else{
      Navigator.push(context, MaterialPageRoute(
         builder: (context){
        return ResultPage(
          correct: correctAnswer,
          wrong: wrongAnswer,
        );
      }));
    }
  
    },
 
  child: Container(
    
  height: 55,
  width: double.infinity,
  alignment: Alignment.center,
  decoration: BoxDecoration(
    gradient: const LinearGradient(colors: [
      Colors.amber,
      Colors.red,
    ]),
    borderRadius: BorderRadius.circular(20),
  ),
  child: const Text("Next",style: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  ),),
   
  ),
),

const Row(),

],)

    ),
    );
  }
}