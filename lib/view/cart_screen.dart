import 'package:flutter/material.dart';
import 'package:poutry_baba_screen/const/constant.dart';

import '../components/button.dart';
import '../generated/assets.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  String title="Poultry Baba Food nutrition for more (5kg)";
  String label="Estimate Delivery:4-5 days";
  String city="Faisalabad";
  String address="House no 783, Sector A, Rahman Colony Karachi Pakistan,near abu aude ansari masjid,Gazi road";
  String image=Assets.iconTemp;
  var onCard=(){};
  var onCancel=(){};
  var onRemove=(){};
  var onChangeAddress=(){};
  String prices="Rs 400";
  int num=1;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios_new,
          color: appMainColor3,
        ),
        title: const Text(
          "My Cart",
          style: TextStyle(color: appMainColor3, fontWeight: FontWeight.bold),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(gradient: gradient),
        ),
        actions: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.03),
              child:const Icon(
                Icons.search,
                color: appMainColor3,
              )),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.03),
            child: Image.asset(Assets.iconDots,width: width *0.06,height: width *0.06,),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: width * 0.04,horizontal: width * 0.04),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              AddressTile(width: width, city: city, onChangeAddress: onChangeAddress, address: address),
              Padding(
                padding: EdgeInsets.symmetric(vertical: width * 0.04),
                child: Text("Product in your cart:",textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.bold,fontSize: width * 0.05),),
              ),
              ListView.separated(
                physics:const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context,index){
                return CartItem(onCard: onCard, width: width, title: title, onCancel: onCancel, label: label, onAdd: (){
                  setState(() {
                    num++;
                  });
                }, num: num, onRemove: (){
                  setState(() {
                    num--;
                  });
                }, prices: prices);
              }, separatorBuilder: (context,index){
                return SizedBox(height: width * 0.02,);

              }, itemCount: 2),
              InkWell(
                onTap: (){
                  setState(() {

                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color:appMainColor1),
                      borderRadius: BorderRadius.circular(7)
                  ),
                  margin: EdgeInsets.symmetric(vertical: width * 0.04),
                  padding: EdgeInsets.symmetric(vertical: width * 0.04,horizontal: width * 0.04),
                  child:Row(
                    children: [
                      Icon(Icons.check_circle,color:appMainColor1),
                      SizedBox(width: width * 0.02,),
                      Text("Apply Promo Code",style: TextStyle(fontSize: width * 0.04,color:appMainColor1),),
                      const Spacer(),
                      Icon(Icons.arrow_forward_ios_outlined,color:appMainColor1),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: width * 0.04),
                child: Text("Bill Details:",textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.bold,fontSize: width * 0.05),),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: width * 0.04,horizontal: width * 0.04),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: titleBackgroundColor,
                ),
                child:Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: width * 0.01),
                      child: Row(
                        children: [
                          Text("SubTotal:"),
                          Spacer(),
                          Text("Rs 400",style: TextStyle(fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: width * 0.01),
                      child: Row(
                        children: [
                          Text("Discount:"),
                          Spacer(),
                          Text("Rs 400",style: TextStyle(fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: width * 0.01),
                      child: Row(
                        children: [
                          Text("Delivery Charges:"),
                          Spacer(),
                          Text("Free",style: TextStyle(fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: width * 0.01),
                      child: Row(
                        children: [
                          Text("Total Amount:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: width * 0.05,color: appMainColor3),),
                          Spacer(),
                          Text("Rs 400",style: TextStyle(fontWeight: FontWeight.bold,fontSize: width * 0.05,color: appMainColor3),)
                        ],
                      ),
                    ),
                  ],
                ) ,
              ),
              Button(onTap: (){}, width: width, label: "Place Order"),
            ],
          ),
        ),
      ),
    ));
  }
}

class CartItem extends StatelessWidget {
  const CartItem({
    Key? key,
    required this.onCard,
    required this.width,
    required this.title,
    required this.onCancel,
    required this.label,
    required this.onAdd,
    required this.num,
    required this.onRemove,
    required this.prices,
  }) : super(key: key);

  final Null Function() onCard;
  final double width;
  final String title;
  final Null Function() onCancel;
  final String label;
  final Null Function() onAdd;
  final int num;
  final Null Function() onRemove;
  final String prices;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (onCard),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey.withOpacity(0.5)),
            borderRadius: BorderRadius.circular(7)),
        padding: EdgeInsets.symmetric(
            horizontal: width * 0.03, vertical: width * 0.03),
        // margin: EdgeInsets.symmetric(
        //     horizontal: width * 0.035, vertical: width * 0.035),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(7),
              child: Image.asset(
                "assets/icon/temp.jpg",
                width: width / 3.6,
                height: width / 3,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: width * 0.04,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(child: Text(title,maxLines:2,overflow:TextOverflow.ellipsis,style:const TextStyle(fontWeight:FontWeight.bold),)),
                      IconButton( icon:const Icon(Icons.cancel_outlined),onPressed: onCancel,)
                    ],
                  ),
                  SizedBox(height: width * 0.05,),
                  Text(label,maxLines:2,overflow:TextOverflow.ellipsis,style:const TextStyle(fontWeight:FontWeight.bold,color: Color(0xffbababa)),),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: width * 0.02),
                    child: Row(
                      children: [
                        InkWell(
                          onTap:(onAdd),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                            color: appMainColor1,
                            ),
                            padding: EdgeInsets.symmetric(vertical: width * 0.005,horizontal: width * 0.005),
                            child:const Icon(Icons.add,color: Colors.white,) ,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: width * 0.02),
                          child: Text(num.toString()),
                        ),
                        InkWell(
                          onTap: (onRemove),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: appMainColor1,
                            ),
                            padding: EdgeInsets.symmetric(vertical: width * 0.005,horizontal: width * 0.005),
                            child:const Icon(Icons.remove,color: Colors.white,) ,
                          ),
                        ),
                        const Spacer(),
                        Text(prices,style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: width * 0.05
                        ),)
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AddressTile extends StatelessWidget {
  const AddressTile({
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
        color: titleBackgroundColor,
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
          Text("Address:",textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.bold,fontSize: width * 0.04),),
          Text(address,textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.bold,fontSize: width * 0.04,color: Colors.grey),)
        ],
      )
    );
  }
}
