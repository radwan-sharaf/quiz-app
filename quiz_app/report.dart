import 'package:flutter/material.dart';
import 'package:flutter_application_1/quiz_app/ui/quiz_page.dart';

class reportPage extends StatefulWidget {
  const reportPage({super.key});

  @override
  State<reportPage> createState() => _reportPageState();
}

class _reportPageState extends State<reportPage> {
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
      
        title:
        
         Padding(
           padding: const EdgeInsets.all(10),
           child: Container(
            
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
            color: Colors.grey[200],
            
            ),
            alignment: Alignment.center,
             child: Text("Report Page",
             style: TextStyle(
              color: Colors.red[600],
              fontSize: 30,
              fontWeight: FontWeight.bold,
             ),
            // textAlign: TextAlign.center,
             
                     ),
           ),
         ),
        
      ),
      
body:

 Column(
 children: [
  
  Container(
    
height: 320,
width: 550,
    color: Colors.green,
  padding: EdgeInsets.all(10),
   child: Text('your right answers is :',style: TextStyle(
    fontSize: 20,
   fontWeight: FontWeight.bold,
   ),),
 ),
SizedBox(
  height: 20,
),
Container(
  height: 320,
   width: 550, 
    color: Colors.red,
  padding: EdgeInsets.all(10),
   child: Text('your wrong answers is :',style: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
   
   ),),
 ),
 SizedBox(
height: 20,
 ),
 Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
     InkWell(
  onTap: (){
Navigator.pushAndRemoveUntil(context,
 MaterialPageRoute(builder: (context){ 
return QuizPage();
  },), (route) => false);
  },
  child: Container(
   padding: EdgeInsets.all(10),
    height: 50,
  width: 150,

  alignment: Alignment.topCenter,
  decoration: BoxDecoration(
    gradient: const LinearGradient(colors: [
      Colors.green,
Colors.black,
    ]),
    borderRadius: BorderRadius.circular(10),
  ),
  child: const Text("return quiz",style: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  ),),
   /* alignment: Alignment.center,
    
    decoration: BoxDecoration(
      
       borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
  
  begin: Alignment.bottomLeft,
  end: Alignment.centerRight,
  colors: [
   Colors.green,
Colors.black,

],),
  ),
  
    child: Text('return quiz',
    textAlign: TextAlign.center,
    style: TextStyle(fontSize: 20,
    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    ),),*/
  ),
),
 ],
 ),
 ],
),
); 
  }
}