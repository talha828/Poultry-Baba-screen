
import 'package:flutter/material.dart';
import 'package:poutry_baba_screen/components/button.dart';
import 'package:poutry_baba_screen/components/payment_method_tile.dart';
import 'package:poutry_baba_screen/const/constant.dart';
import 'package:poutry_baba_screen/generated/assets.dart';
import 'package:poutry_baba_screen/model/payment_info_model.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  var onTap=(){};
  String label1="jazzcash";
  String label2="shop";
  String image=Assets.iconJazzcash;
  int paymentType=0;

  @override
  Widget build(BuildContext context) {
    var width =MediaQuery.of(context).size.width;
    return  SafeArea(
      child: Scaffold(
          appBar: AppBar(
            leading:const Icon(Icons.arrow_back_ios_new,color: appMainColor3,),
            title:const Text("Payment Method",style:TextStyle(color: appMainColor3,fontWeight: FontWeight.bold),),
            flexibleSpace: Container(
              decoration:const BoxDecoration(
                  gradient: gradient
              ),
            ),
            actions: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                child: Image.asset(Assets.iconDots,width: width *0.06,height: width *0.06,),
              ),
            ],
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: titleBackgroundColor,
                    borderRadius: BorderRadius.circular(7)
                ),
                margin: EdgeInsets.symmetric(horizontal: width * 0.06,vertical: width * 0.06),
                padding: EdgeInsets.symmetric(vertical: width * 0.04,horizontal: width * 0.04),
                child:Row(
                  children: [
                    Text("Total Amount:",style: TextStyle(fontSize: width * 0.04),),
                    const Spacer(),
                    Text("Rs 400",style: TextStyle(fontSize: width * 0.05,fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.06,vertical: width * 0.06),
                child: Text("Select payment Method?",style: TextStyle(fontSize: width * 0.05,fontWeight: FontWeight.bold),),
              ),
              Container(
                color: Colors.white,
                height: width * 0.35,
                child:ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: list.length,
                    itemBuilder: (context,index){
                      return PaymentMethodTile(onTap: onTap, width: width, image: list[index].image, label1: list[index].label1, label2: list[index].label2);
                    }),
              ),
              SizedBox(height: width *0.02,),
              InkWell(
                onTap: (){
                  setState(() {
                    paymentType=1;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color:paymentType==1?appMainColor1: Colors.white),
                      borderRadius: BorderRadius.circular(7)
                  ),
                  margin: EdgeInsets.symmetric(horizontal: width * 0.06,vertical: width * 0.04),
                  padding: EdgeInsets.symmetric(vertical: width * 0.04,horizontal: width * 0.04),
                  child:Row(
                    children: [
                      Icon(Icons.discount,color:paymentType==1?appMainColor1: Colors.black),
                      SizedBox(width: width * 0.02,),
                      Text("Poultry Baba Discount",style: TextStyle(fontSize: width * 0.04,color:paymentType==1?appMainColor1: Colors.black,),),
                      const Spacer(),
                      Text("Rs 400",style: TextStyle(fontSize: width * 0.05,fontWeight: FontWeight.bold,color:paymentType==1?appMainColor1: Colors.black),),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  setState(() {
                    paymentType=0;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color:paymentType==0?appMainColor1: Colors.white),
                      borderRadius: BorderRadius.circular(7)
                  ),
                  margin: EdgeInsets.symmetric(horizontal: width * 0.06,vertical: width * 0.04),
                  padding: EdgeInsets.symmetric(vertical: width * 0.04,horizontal: width * 0.04),
                  child:Row(
                    children: [
                      Text("Pay On Delivery (Cash)",style: TextStyle(fontSize: width * 0.04,color:paymentType==0?appMainColor1: Colors.black),),
                      const Spacer(),
                      Icon(Icons.check_circle,color:paymentType==0?appMainColor1: Colors.black),
                    ],
                  ),
                ),
              ),
              const Spacer(),
              Button(onTap: (){}, width: width, label: "Confirm Order"),
            ],
          )
      ),
    );
  }
  List<PaymentInfoModel>list=[
    PaymentInfoModel(image: Assets.iconJazzcash, label1: "Jazzcash", label2: "Shop"),
    PaymentInfoModel(image: Assets.iconJazzcash, label1: "Jazzcash", label2: "Wallet"),
    PaymentInfoModel(image: Assets.iconEasypisa, label1: "easypisa", label2: "Wallet"),
    PaymentInfoModel(image: Assets.iconCreditcard, label1: "Debit/Credit", label2: "Card"),
    PaymentInfoModel(image: Assets.iconUnionpay, label1: "Union pay", label2: "Card"),
  ];
}
