
import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({
    Key? key,
    required this.onCard,
    required this.width,
    required this.title,
    required this.label,
    required this.onIcon,
  }) : super(key: key);

  final Null Function() onCard;
  final double width;
  final String title;
  final String label;
  final Null Function() onIcon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onCard,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey.withOpacity(0.5)),
            borderRadius: BorderRadius.circular(7)),
        padding: EdgeInsets.symmetric(
            horizontal: width * 0.03, vertical: width * 0.03),
        margin: EdgeInsets.symmetric(
            horizontal: width * 0.035, vertical: width * 0.035),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(7),
              child: Image.asset(
                "assets/icon/temp.jpg",
                width: width / 3.5,
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
                  Text(title,maxLines:2,overflow:TextOverflow.ellipsis,style:const TextStyle(fontWeight:FontWeight.bold),),
                  SizedBox(height: width * 0.05,),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(label,maxLines:2,overflow:TextOverflow.ellipsis,style:const TextStyle(fontWeight:FontWeight.bold,color: Color(0xff28ba74)),),

                      IconButton( icon:const Icon(Icons.arrow_drop_down),onPressed: onIcon,)
                    ],
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
