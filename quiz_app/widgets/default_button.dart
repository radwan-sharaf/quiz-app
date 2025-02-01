

import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
   DefaultButton({
    super.key,
   required this.onTap,
   this.height =55,
   this.width=double.infinity,
   required this.colors,
   this.child,
   this.alignment,
   });
  void Function()? onTap;
double height;
double width;
List<Color> colors;
Widget? child;
Alignment? alignment;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height,
         width: width,
               decoration: BoxDecoration(
borderRadius: BorderRadius.circular(20),
gradient: LinearGradient(colors: colors),
      ),
        alignment: alignment,
       

      child: child,
      ),
    );
  }
}