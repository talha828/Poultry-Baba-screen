import 'package:flutter/material.dart';
import 'package:poutry_baba_screen/const/constant.dart';

import '../components/button.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    var width =MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
       body: Container(
         color: appMainColor1.withOpacity(0.4),
         padding:EdgeInsets.symmetric(vertical: width * 0.04,horizontal: width * 0.04),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.stretch,
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Image.asset("assets/img/welcome.png",scale: width * 0.011,),
             Text("Good Bye",textAlign: TextAlign.center,style: TextStyle(fontSize: width * 0.06,fontWeight: FontWeight.bold),),
             SizedBox(height: width * 0.03,),
             Padding(
               padding: EdgeInsets.symmetric(horizontal: width * 0.04),
               child: Text("Here you can Buy and sell product on discount rate also check your order and track it. Also you can payment here as you can with jazzcash easypisa and more",textAlign: TextAlign.center,style: TextStyle(fontSize: width * 0.04,color: Colors.black54),),
             ),
             SizedBox(height: width * 0.03,),
             InkWell(
               onTap: (){},
               child: Container(
                   decoration: BoxDecoration(
                       color: appMainColor1,
                       border: Border.all(color:appMainColor1),
                       borderRadius: BorderRadius.circular(7)
                   ),
                   margin: EdgeInsets.symmetric(horizontal: width * 0.06,vertical: width * 0.04),
                   padding: EdgeInsets.symmetric(vertical: width * 0.04,horizontal: width * 0.04),
                   child:const Text("Welcome",textAlign: TextAlign.center,style:const TextStyle(color: appMainColor3,fontWeight: FontWeight.bold),)
               ),
             )
           ],
         ),
       ), 
      ),
    );
  }
}
