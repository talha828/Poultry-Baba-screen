import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:poutry_baba_screen/components/addressInfo.dart';
import 'package:poutry_baba_screen/components/keyfeatures.dart';
import 'package:poutry_baba_screen/components/productinfo.dart';
import 'package:poutry_baba_screen/const/constant.dart';
import 'package:poutry_baba_screen/generated/assets.dart';

import '../components/button.dart';
import '../components/discount_rating.dart';
import '../components/image_slider.dart';
import '../components/reviewandrating.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  List imageList = [
    'assets/icon/temp.jpg',
    'assets/icon/temp.jpg',
    'assets/icon/temp.jpg',
    'assets/icon/temp.jpg',
    'assets/icon/temp.jpg',
  ];
  String discount = "35% off";
  int productCount = 1;
  List<bool> rating = [
    true,
    true,
    true,
    false,
    false,
  ];
  String name = "PolutryBaba Organic Feed nurition For more imution";
  String discountPrices = 'Rs 400';
  String prices = 'Rs 410';
  var onAdd=(){};
  var onRemove=(){};
  var onChangeAddress=(){};
  String city="Faisalabad";
  String address="House no 783, Sector A, Rahman Colony Karachi Pakistan,near abu aude ansari masjid,Gazi road";
  List<keyFeatures>list=[
    keyFeatures(key: "Meal", features: "80%"),
    keyFeatures(key: "Three Feed", features: "karchi ,karachi,kolachi"),
    keyFeatures(key: "Speacial Remark", features: "very good old house owner test result good better etc "),
  ];
  double min=100;
  double max=1000;
  double value=800;
  String total="200";
  int num=1;
  var onChange=(value){};
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios_new,
          color: appMainColor3,
        ),
        title: const Text(
          "Product Details",
          style: TextStyle(color: appMainColor3, fontWeight: FontWeight.bold),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(gradient: gradient),
        ),
        actions: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.03),
              child: const Icon(
                Icons.search,
                color: appMainColor3,
              )),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.03),
              child: const Icon(
                Icons.shopping_cart,
                color: appMainColor3,
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: width *0.04,left:width *0.04 ,right:width *0.04 ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ImageSlider(width: width, imageList: imageList),
              SizedBox(height: width * 0.04,),
              ProductInfo(width: width, discount: discount, rating: rating, name: name, discountPrices: discountPrices, prices: prices, onAdd: onAdd, productCount: productCount, onRemove: onRemove),
              SizedBox(height: width * 0.04,),
              AddressInfo(width: width, city: city, onChangeAddress: onChangeAddress, address: address),
              SizedBox(height: width * 0.04,),
              Button(onTap: (){}, width: width, label: "Add to Cart"),
              SizedBox(height: width * 0.04,),
              KeyFeaturesCard(width: width, list: list),
              SizedBox(height: width * 0.04,),
              ReviewAndRating(width: width, rating: rating, min: min, max: max, value: value, onChange: onChange, total: total, discount: discount),
              SizedBox(height: width * 0.04,),
              SimilarProduct(width: width, discount: discount, rating: rating, name: name, discountPrices: discountPrices),
              SizedBox(height: width * 0.04,),
              Container(
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: (){
                        setState(() {
                          num=1;
                          print(num);
                        });
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              color:num==1?appMainColor1:Colors.white,
                              border: Border.all(color:num==1?appMainColor1:Colors.white),
                              borderRadius: BorderRadius.circular(7)
                          ),
                          margin: EdgeInsets.symmetric(horizontal: width * 0.06,vertical: width * 0.04),
                          padding: EdgeInsets.symmetric(vertical: width * 0.04,horizontal: width * 0.06),
                          child: Text("Visit Store",textAlign: TextAlign.center,style:const TextStyle(color: appMainColor3,fontWeight: FontWeight.bold),)
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        setState(() {
                          num=0;

                        });
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              color:num==0?appMainColor1:Colors.white,
                              border: Border.all(color:num==0?appMainColor1:Colors.white),
                              borderRadius: BorderRadius.circular(7)
                          ),
                          margin: EdgeInsets.symmetric(horizontal: width * 0.06,vertical: width * 0.04),
                          padding: EdgeInsets.symmetric(vertical: width * 0.04,horizontal: width * 0.06),
                          child: Text("Buy Now",textAlign: TextAlign.center,style:const TextStyle(color: appMainColor3,fontWeight: FontWeight.bold),)
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SimilarProduct extends StatelessWidget {
  const SimilarProduct({
    Key? key,
    required this.width,
    required this.discount,
    required this.rating,
    required this.name,
    required this.discountPrices,
  }) : super(key: key);

  final double width;
  final String discount;
  final List<bool> rating;
  final String name;
  final String discountPrices;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Similar Products:",
            textAlign: TextAlign.start,
            style: TextStyle(
                fontWeight: FontWeight.bold,fontSize: width * 0.05),
          ),
          SizedBox(height: width * 0.04,),
          Container(
            height: width * 0.6,
            child: ListView.separated(
              separatorBuilder: (context,index){
                return SizedBox(width: width * 0.04,);
              },
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index){
              return ProductTile(width: width, discount: discount, rating: rating, name: name, discountPrices: discountPrices);
            }),
          ),
        ],
      ),
    );
  }
}

class ProductTile extends StatelessWidget {
  const ProductTile({
    Key? key,
    required this.width,
    required this.discount,
    required this.rating,
    required this.name,
    required this.discountPrices,
  }) : super(key: key);

  final double width;
  final String discount;
  final List<bool> rating;
  final String name;
  final String discountPrices;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * 0.45,
      padding: EdgeInsets.symmetric(vertical: width *0.02,horizontal: width * 0.02),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        border: Border.all(color: Colors.grey.withOpacity(0.5))
      ),
        child: Column(
        children: [
          DiscountAndRating(
              width: width, discount: discount, rating: rating),
          ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset("assets/icon/temp.jpg")),
          Text(
            name,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: width * 0.05),
          ),
          SizedBox(width: width * 0.02,),
          Row(
            children: [
              Text(
                discountPrices,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: width * 0.05),
              ),
              SizedBox(width: 2,),
              Text(
                discountPrices,
                style: TextStyle(
                  color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: width * 0.03),
              ),
            ],
          ),
        ],
      )
    );
  }
}
