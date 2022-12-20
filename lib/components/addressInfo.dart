import 'package:flutter/material.dart';
import 'package:poutry_baba_screen/const/constant.dart';

class AddressInfo extends StatelessWidget {
  const AddressInfo({
    Key? key,
    required this.width,
    required this.city,
    required this.onChangeAddress,
    required this.address,
  }) : super(key: key);

  final double width;
  final String city;
  final Null Function() onChangeAddress;
  final String address;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: width * 0.02,horizontal: width * 0.04),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(7)
        ),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(children: [
              const Icon(Icons.location_on),
              Text(city,style: TextStyle(fontWeight: FontWeight.bold,fontSize: width * 0.05),),
              const Spacer(),
              const Icon(Icons.edit_location_alt,color: appMainColor1,),
              SizedBox(width: width * 0.01,),
              InkWell(
                  onTap: onChangeAddress,
                  child: const Text("Change Address",style: TextStyle(fontWeight: FontWeight.bold,color: appMainColor1),)),
            ],),
            SizedBox(height: width *0.02,),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Address:",textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.bold,fontSize: width * 0.04),),
                      Text(address,textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.bold,fontSize: width * 0.04,color: Colors.grey),)
                    ],
                  ),
                ),
                SizedBox(
                    width: 2,
                    height: width * 0.15,
                    child:const VerticalDivider()),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset("assets/icon/express-delivery.png",width: width * 0.12,height: width * 0.12,),
                    ),
                    Padding(
                      padding:EdgeInsets.symmetric(horizontal: width * 0.02),
                      child: Text("Estimate Delivery Time", style: TextStyle(
                          color: Colors.grey
                      ),),
                    ),
                    SizedBox(height: width * 0.02,),
                    Padding(
                      padding:EdgeInsets.symmetric(horizontal: width * 0.02),
                      child: Text("3 - 4 Days", style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: width * 0.05
                      ),),
                    ),
                  ],
                )
              ],
            )
          ],
        )
    );
  }
}
