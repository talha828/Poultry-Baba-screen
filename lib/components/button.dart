import 'package:flutter/material.dart';
import 'package:poutry_baba_screen/const/constant.dart';

class Button extends StatelessWidget {
  const Button({
    Key? key,
    required this.onTap,
    required this.width,
    required this.label,
  }) : super(key: key);

  final Null Function() onTap;
  final double width;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: InkWell(
        onTap: onTap,
        child: Container(
            decoration: BoxDecoration(
                color: appMainColor1,
                border: Border.all(color:appMainColor1),
                borderRadius: BorderRadius.circular(7)
            ),
            margin: EdgeInsets.symmetric(horizontal: width * 0.06,vertical: width * 0.04),
            padding: EdgeInsets.symmetric(vertical: width * 0.04,horizontal: width * 0.04),
            child: Text(label,textAlign: TextAlign.center,style:const TextStyle(color: appMainColor3,fontWeight: FontWeight.bold),)
        ),
      ),
    );
  }
}