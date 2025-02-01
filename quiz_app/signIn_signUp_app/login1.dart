import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/default_text.dart';
import 'package:flutter_application_1/quiz_app/widgets/Big_texr.dart';
import 'package:flutter_application_1/quiz_app/widgets/default_button.dart';
import 'package:flutter_application_1/quiz_app/widgets/default_text.dart';
import 'package:flutter_application_1/quiz_app/signIn_signUp_app/sign_up.dart';
import 'package:flutter_application_1/quiz_app/widgets/small_text.dart';
//import 'package:flutter_application_1/sign_up.dart';

class LoginPage extends StatefulWidget {
   LoginPage({super.key});



  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
TextEditingController emailCtrl = TextEditingController();

TextEditingController passwordCtrl = TextEditingController();

bool isShow =true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[500],
      
body: 
   SingleChildScrollView(
    child: Padding(
    
          padding: const EdgeInsets.only(left: 20,right: 20,top: 60,bottom: 20),
          child: Column(
            children: [
              Image.asset('assets/images/food.png',
              height: 200,
              width: 200,),
              SizedBox(
                height: 25,
              ),
          Container(
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BigText('Welcome. Sign in ',
               color: Colors.black,
               weight: FontWeight.w500,
               ),
               SizedBox(
                height: 3,
               ),
            
               SmallText('Login now for the application',color: Colors.grey[700]!,
               size: 16,
               ),
            
            ],
            
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Column(
        children: [
          //textformfield
        DefaultTextField(
          hintText: 'Email Address',
          controller: emailCtrl,
          prefix: Icon(Icons.email),
          keyboardType: TextInputType.emailAddress,
        ),
        SizedBox(
          height: 15,
        ),
        DefaultTextField(
        hintText: 'Password',
        showText: isShow,
        controller: passwordCtrl,
        prefix: Icon(Icons.lock),
        keyboardType: TextInputType.visiblePassword,
        suffix: IconButton(
          onPressed: (){
setState(() {
  isShow = !isShow;
});
          },
        icon: Icon(isShow==true? Icons.visibility_off
        :Icons.visibility),
        ),
        
        ),
        ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            alignment: Alignment.centerRight,
            child: TextButton(onPressed: (){},
            child: Text('Forget password?',style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),),),
          ),
          SizedBox(
            height: 25,
          ),
         
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 25),
             child:
              DefaultButton(onTap: (){
              if(emailCtrl.text.isEmpty || passwordCtrl.text.isEmpty){
                print('please enter emaril or password');
              }
              else{
goToDb(emailCtrl.text, passwordCtrl.text);
              }
             }, 
             colors: [Colors.pink[800]!,Colors.pink[800]!,],
             child: BigText('Login'),
             alignment: Alignment.center,),
           ),
           SizedBox(
            height: 20,
           ),
           BigText('------- OR -------',size: 29,
           color: Colors.black,
           ),
           SizedBox(height: 15,),
        Row(
              children: [SmallText('if you don\'t have any account?',size: 14,
              color: Colors.grey[700]!,),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
             return SignUpPage();
                }));
              },
             
              child: Text('Sign up',style: TextStyle(
                decoration: TextDecoration.underline,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              ),
              ),
              
              ],
              
             ),
           
          
    
            ],
          ),
        ),
  ),



    );
  }

void goToDb(String email,String password){
  print('email: $email');
    print('email: $password');

}
}