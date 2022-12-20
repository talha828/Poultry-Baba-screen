import 'package:flutter/material.dart';
import 'package:poutry_baba_screen/const/constant.dart';

class DiscountAndRating extends StatelessWidget {
  const DiscountAndRating({
    Key? key,
    required this.width,
    required this.discount,
    required this.rating,
  }) : super(key: key);

  final double width;
  final String discount;
  final List<bool> rating;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
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
        const Spacer(),
        SizedBox(
          width: width * 0.2,
          height: width * 0.1,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Icon(
                  Icons.star,
                  color: rating[index] ? Colors.amberAccent : Colors.grey,
                  size: width * 0.04,
                );
              }),
        )
      ],
    );
  }
}