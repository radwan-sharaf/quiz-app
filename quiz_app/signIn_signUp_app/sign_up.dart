import 'package:flutter/material.dart';
import 'package:flutter_application_1/default_text.dart';
//import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/quiz_app/widgets/Big_texr.dart';
import 'package:flutter_application_1/quiz_app/widgets/default_button.dart';
import 'package:flutter_application_1/quiz_app/widgets/default_text.dart';
import 'package:flutter_application_1/quiz_app/signIn_signUp_app/login1.dart';
import 'package:flutter_application_1/quiz_app/widgets/small_text.dart';

class SignUpPage extends StatelessWidget {
   SignUpPage({super.key});

TextEditingController firstNameCtrl = TextEditingController();
TextEditingController lastNameCtrl = TextEditingController();
TextEditingController emailCtrl = TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();
  TextEditingController confirmPasswoedCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.yellow[500],
body:

 SingleChildScrollView(
  
  child: Padding(
    
    padding: EdgeInsets.only(left: 20,right: 20,bottom: 20,top: 60
  ),
  child: Column(
    children: [
Image.asset('assets/images/food.png',
height: 200,
width: 200,
),
SizedBox(height: 25,),
Container(
  alignment: Alignment.centerLeft,
  child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    BigText('Welcome back, Sign up',
    color: Colors.black,),
    SizedBox(height: 3,
    ),
    SmallText('join now for this application',
    color: Colors.grey[700]!,size: 16,
    )
  ],
  ),
),
SizedBox(
  height: 20,
),
Column(
  children: [
    Row(children: [

    Expanded(child:
     DefaultTextField(controller: firstNameCtrl,
     hintText: 'First name',
     prefix: Icon(Icons.person),),
     ),
     SizedBox(width: 5,),
  Expanded(child: 
  DefaultTextField(controller: lastNameCtrl,
  hintText: 'Last name',
  prefix: Icon(Icons.person),
  ),

  ),

  ],
  
  ),
  SizedBox(height: 15,),
  DefaultTextField(controller: emailCtrl,
  hintText: 'Email address',
  prefix: Icon(Icons.email)),
  SizedBox(height: 10,),
  DefaultTextField(controller: passwordCtrl,
  hintText: 'Password',
  prefix: Icon(Icons.lock,
  ),
  suffix: IconButton(onPressed: (){},icon: Icon(Icons.visibility),),),
  SizedBox(height: 10,),
  DefaultTextField(controller: confirmPasswoedCtrl,
  hintText: 'Confirm password',
  prefix: Icon(Icons.lock),
  suffix: IconButton(onPressed: (){},icon: Icon(Icons.visibility),),
  ),
  ],
),
SizedBox(height: 20,),
    Padding(
             padding: const EdgeInsets.symmetric(horizontal: 25),
             child:
              DefaultButton(onTap: (){}, 
             colors: [Colors.pink[800]!,Colors.pink[800]!,],
             child: BigText('Sign up'),
             alignment: Alignment.center,
             ),
           ),
  
SizedBox(height: 20,),
Row(children: [
  SmallText('Already have an account?',size: 18,
            color: Colors.grey[700]!,),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
return LoginPage();
              }));
            },

            child: Text('Sign in',style: TextStyle(
              color: Colors.pink[700],
              decoration: TextDecoration.underline,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
            ),
            ),
],),
    ],
  ),
  ),
),


    );
  }
}