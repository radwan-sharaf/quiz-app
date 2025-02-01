import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/quiz_app/data/question.dart';
import 'package:flutter_application_1/quiz_app/ui/quiz_page.dart';
import 'package:flutter_application_1/quiz_app/report.dart';


 class ResultPage extends StatelessWidget {
   ResultPage({super.key,required this.correct  ,required this.wrong});

int correct;
int wrong;
double average=0.0;
int averageVlue(){
  average=correct/quizData.length*100;
  return average.toInt();
}
  @override
  Widget build(BuildContext context) {
    average=correct/quizData.length;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 20),
        child: Column(
          children: [
            Expanded(child: Container(
              color: Colors.white,
              child: Column(
                children: [
              averageVlue()>=60?    Image.asset('assets/images/quiz.png',
                width: 300,
                height: 300,
                ):    Image.asset('assets/images/quiz2.png',
                width: 300,
                height: 300,
                ),
                Text(
                  averageVlue()>=60? 'Result passed':'Result Field',
                  style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color:averageVlue()>=60?Colors.green:Colors.red[800],
                ),),
                SizedBox(
                  height: 10,
                ),
                    Text('Your average is: ${averageVlue()}%',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[500],
                ),),
                ],
              ),

              ),
            ),
            SizedBox(
              height: 25,
            ),
               Expanded(child: Container(
              child: Column(
                children: [
                  Container(
          
                    padding: EdgeInsets.symmetric(horizontal: 15,vertical: 20),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                    color: Colors.green[100],),
                    child: Row(
                      children: [
                        Icon(Icons.done,size: 30,
                        color: Colors.green[800],),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Text('Great! you have $correct correct of ${quizData.length} answers',
                          style: TextStyle(fontSize: 18,
                          letterSpacing: 1.2,
                          color: Colors.green[800],
                          fontWeight: FontWeight.w500,),),
                        ),
                      ],
                    ),
                  ),
               SizedBox(
                height: 25,
               ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15,vertical: 20),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                    color: Colors.red[100],),
                    child: Row(
                      children: [
                        Icon(Icons.close,size: 30,
                        color: Colors.red[800],),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Text('you have $wrong wrong answers of ${quizData.length} answers',
                          style: TextStyle(fontSize: 18,
                          
                          letterSpacing: 1.2,
                        
                          color: Colors.red[800],
                          fontWeight: FontWeight.w500,),),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
  children: [
Expanded(
  child: InkWell(
  onTap: (){
Navigator.pushAndRemoveUntil(context,
 MaterialPageRoute(builder: (context){ 
return QuizPage();
  }), (route) => false);
  },
  child: Container(
    height: 55,
    alignment: Alignment.center,
    decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
  
  begin: Alignment.bottomLeft,
  end: Alignment.centerRight,
  colors: [

//Colors.black,

   Colors.green,
Colors.black,

]),
  ),
    child: Text('return quiz',style: TextStyle(fontSize: 20,
    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    ),),
  ),
),
),
SizedBox(
  width: 20,
),
Expanded(child: InkWell(
onTap: (){
   Navigator.pushAndRemoveUntil(context,
 MaterialPageRoute(builder: (context){ 

return reportPage();
  }), (route) => false);
  },
  child: Container(
    height: 55,
    alignment: Alignment.center,
    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                     gradient: LinearGradient(
  
  begin: Alignment.bottomLeft,
  end: Alignment.centerRight,
  colors: [
   Colors.red,
Colors.black,

],),
                    ),
                    child: Text('Go report',style: TextStyle(fontSize: 20,
                   fontWeight: FontWeight.bold,
                    color: Colors.white,
                    ),),
                    ),
),
                  ),
                 ], 
                 ),
                 ],
              ),
            ),),
          ],
        ),
      )

    );
  }
}