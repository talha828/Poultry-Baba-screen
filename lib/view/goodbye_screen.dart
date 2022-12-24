import 'package:flutter/material.dart';
import 'package:poutry_baba_screen/const/constant.dart';

import '../components/button.dart';

class GoodByeScreen extends StatefulWidget {
  const GoodByeScreen({Key? key}) : super(key: key);

  @override
  State<GoodByeScreen> createState() => _GoodByeScreenState();
}

class _GoodByeScreenState extends State<GoodByeScreen> {
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
              Image.asset("assets/img/goodbye.png",scale: width * 0.011,),
              Text("Good Bye!",textAlign: TextAlign.center,style: TextStyle(fontSize: width * 0.06,fontWeight: FontWeight.bold),),
              SizedBox(height: width * 0.03,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries",textAlign: TextAlign.center,style: TextStyle(fontSize: width * 0.04,color: Colors.black54),),
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
                    child:const Text("Good Bye",textAlign: TextAlign.center,style:const TextStyle(color: appMainColor3,fontWeight: FontWeight.bold),)
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
