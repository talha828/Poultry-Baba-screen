
import 'package:flutter/material.dart';
import 'package:poutry_baba_screen/const/constant.dart';

class ReviewAndRating extends StatelessWidget {
  const ReviewAndRating({
    Key? key,
    required this.width,
    required this.rating,
    required this.min,
    required this.max,
    required this.value,
    required this.onChange,
    required this.total,
    required this.discount,
  }) : super(key: key);

  final double width;
  final List<bool> rating;
  final double min;
  final double max;
  final double value;
  final Null Function(dynamic value) onChange;
  final String total;
  final String discount;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.withOpacity(0.5)),
          borderRadius: BorderRadius.circular(7),
          color: Colors.white
      ),
      padding: EdgeInsets.symmetric(vertical: width * 0.02,horizontal: width * 0.02),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text("Rating And Reviews",textAlign: TextAlign.start,style: TextStyle(fontSize: width * 0.045,fontWeight: FontWeight.bold),),
          Row(
            children: [
              Container(
                child: Column(
                  children: [
                    SizedBox(height: width * 0.04,),
                    Text("4.5 of 5",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: width * 0.06,
                    ),),
                    SizedBox(
                      width: width * 0.3,
                      height: width * 0.1,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return Icon(
                              Icons.star,
                              color: rating[index] ? Colors.amberAccent : Colors.grey,
                              size: width * 0.06,
                            );
                          }),
                    ),
                    Text("347 Rating and 5 Reviews",style: TextStyle(
                      color: Colors.grey,
                    ),)
                  ],
                ),
              ),
              SizedBox(
                  width: 2,
                  height: width * 0.15,
                  child:const VerticalDivider()),
              Expanded(
                  child:ListView.builder(
                      itemExtent: 20,
                      shrinkWrap: true,
                      itemBuilder: (context,index){
                        return Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: RatingBar(num: index+1, width: width, min: min, max: max, value: value, onChange: onChange, total: total),
                        );
                      }, itemCount: 5)
              )
            ],
          ),
          SizedBox(height: width * 0.04,),
          Text("Reviews:",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: width * 0.04
          ),),
          ListTile(
            leading: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset("assets/icon/temp.jpg",fit: BoxFit.cover,width: width * 0.1,height: width * 0.1,)),
            title: Text("Arsalan Ahmed"),
            subtitle: Text("Karachi wala"),
            trailing: Container(
              padding: EdgeInsets.symmetric(
                  vertical: width * 0.01, horizontal: width * 0.015),
              decoration: BoxDecoration(
                  color: discountLabelColor,
                  borderRadius: BorderRadius.circular(40)),
              child: Text(
                discount,
                style: TextStyle(fontSize: width * 0.03, color: Colors.white),
              ),
            ),
          ),
          Text("Awosome company and services",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: width * 0.04
          ),),
          SizedBox(height: width * 0.02,),
          Text("bled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop",style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey,
              fontSize: width * 0.04
          ),),

        ],
      ),
    );
  }
}

class RatingBar extends StatelessWidget {
  const RatingBar({
    Key? key,
    required this.num,
    required this.width,
    required this.min,
    required this.max,
    required this.value,
    required this.onChange,
    required this.total,
  }) : super(key: key);

  final int num;
  final double width;
  final double min;
  final double max;
  final double value;
  final Null Function(dynamic value) onChange;
  final String total;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text(num.toString(),style:const TextStyle(color: Colors.grey,fontWeight: FontWeight.w900),),
      Icon(Icons.star,size: width * 0.04,),
      Container(
        width: width * 0.23,
        child: Slider(
            autofocus: false,
            inactiveColor: Colors.grey,
            activeColor:const Color(0xff6fb996),
            thumbColor: Colors.transparent,
            min: min,
            max:max,
            value: value, onChanged:onChange),
      ),
      SizedBox(width: width * 0.01,),
      Text(total,style:const TextStyle(color: Colors.grey,fontWeight: FontWeight.w900),),
    ],);
  }
}







