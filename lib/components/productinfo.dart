
import 'package:flutter/material.dart';
import 'package:poutry_baba_screen/components/discount_rating.dart';
import 'package:poutry_baba_screen/const/constant.dart';
import 'package:poutry_baba_screen/view/product_details.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({
    Key? key,
    required this.width,
    required this.discount,
    required this.rating,
    required this.name,
    required this.discountPrices,
    required this.prices,
    required this.onAdd,
    required this.productCount,
    required this.onRemove,
  }) : super(key: key);

  final double width;
  final String discount;
  final List<bool> rating;
  final String name;
  final String discountPrices;
  final String prices;
  final Null Function() onAdd;
  final int productCount;
  final Null Function() onRemove;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: width * 0.02, horizontal: width * 0.02),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.withOpacity(0.5)),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          DiscountAndRating(
              width: width, discount: discount, rating: rating),
          Text(
            name,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: width * 0.05),
          ),
          Row(
            children: [
              Text(
                discountPrices,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: width * 0.05),
              ),
              SizedBox(
                width: width * 0.02,
              ),
              Text(
                prices,
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: width * 0.03),
              ),
              const Spacer(),
              Row(
                children: [
                  InkWell(
                    onTap:onAdd,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: appMainColor1,
                      ),
                      padding: EdgeInsets.symmetric(
                          vertical: width * 0.005,
                          horizontal: width * 0.005),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.02),
                    child: Text(productCount.toString()),
                  ),
                  InkWell(
                    onTap: onRemove,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: appMainColor1,
                      ),
                      padding: EdgeInsets.symmetric(
                          vertical: width * 0.005,
                          horizontal: width * 0.005),
                      child: const Icon(
                        Icons.remove,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              const Divider(),
              Row(children: [
                Expanded(
                  child: Container(
                    padding:EdgeInsets.symmetric(vertical: width * 0.03,horizontal: width * 0.03),
                    child: Column(
                      children: const[
                        Icon(Icons.delivery_dining),
                        Text("Free Delivery")
                      ],
                    ),
                  ),
                ),
                SizedBox(
                    width: 2,
                    height: width * 0.15,
                    child:const VerticalDivider()),
                Expanded(
                  child: Container(
                    padding:EdgeInsets.symmetric(vertical: width * 0.03,horizontal: width * 0.03),
                    child: Column(
                      children: const[
                        Icon(Icons.monetization_on_rounded),
                        Text("Cash On Delivery")
                      ],
                    ),
                  ),
                ),
              ],),
              const Divider(),
              Row(children: [
                Expanded(
                  child: Container(
                    padding:EdgeInsets.symmetric(vertical: width * 0.03,horizontal: width * 0.03),
                    child: Column(
                      children: const[
                        Icon(Icons.check_circle),
                        Text("100% original")
                      ],
                    ),
                  ),
                ),
                SizedBox(
                    width: 2,
                    height: width * 0.15,
                    child:const VerticalDivider()),
                Expanded(
                  child: Container(
                    padding:EdgeInsets.symmetric(vertical: width * 0.03,horizontal: width * 0.03),
                    child: Column(
                      children: const[
                        Icon(Icons.assignment_returned),
                        Text("% Day Easy Return")
                      ],
                    ),
                  ),
                ),
              ],),
            ],
          )
        ],
      ),
    );
  }
}