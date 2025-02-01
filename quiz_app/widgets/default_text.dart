import 'package:flutter/material.dart';


class DefaultTextField extends StatelessWidget {
 DefaultTextField({super.key,this.keyboardType,
 this.hintText,
 this.prefix,
 this.suffix,
 required this.controller,
  this.showText =false,
 });

TextInputType? keyboardType;
Widget? prefix;
String? hintText;
Widget? suffix;
bool showText=false;
TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
 controller: controller,
obscureText: showText,
  keyboardType: keyboardType,
decoration: InputDecoration(
  prefixIcon: prefix,
  labelText: hintText,
  suffixIcon: suffix,
  hintText: 'write here',
  border: OutlineInputBorder(
  
borderRadius: BorderRadius.circular(15),
), ),

    );
    
  }
}