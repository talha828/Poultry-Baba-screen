import 'package:flutter/material.dart';
import 'package:poutry_baba_screen/view/product_details.dart';

class KeyFeaturesCard extends StatelessWidget {
  const KeyFeaturesCard({
    Key? key,
    required this.width,
    required this.list,
  }) : super(key: key);

  final double width;
  final List<keyFeatures> list;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          "Key Features:",
          textAlign: TextAlign.start,
          style: TextStyle(
              fontWeight: FontWeight.bold,fontSize: width * 0.05),
        ),
        SizedBox(height: width * 0.04,),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              color: Colors.white,
              border: Border.all(color: Colors.grey.withOpacity(0.5))
          ),
          padding: EdgeInsets.symmetric(vertical: width * 0.04,horizontal: width * 0.04),
          child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context,index){
              return Row(
                children: [
                  Container(
                      alignment: Alignment.bottomLeft,
                      width:width * 0.3,
                      child: Text(list[index].key,style:const TextStyle(fontWeight: FontWeight.bold),)),
                  Expanded(child: Text(list[index].features,style:const TextStyle(color: Colors.grey),))
                ],
              );
            },
            itemCount: list.length,
            separatorBuilder: (context,index){
              return const Divider();
            },
          ),
        )
      ],
    );
  }
}
class keyFeatures{
  String key;
  String features;
  keyFeatures({required this.key,required this.features});
}