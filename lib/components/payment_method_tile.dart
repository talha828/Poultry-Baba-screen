
import 'package:flutter/material.dart';
import 'package:poutry_baba_screen/const/constant.dart';

class PaymentMethodTile extends StatelessWidget {
  const PaymentMethodTile({
    Key? key,
    required this.onTap,
    required this.width,
    required this.image,
    required this.label1,
    required this.label2,
  }) : super(key: key);

  final Null Function() onTap;
  final double width;
  final String image;
  final String label1;
  final String label2;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width * 0.2,
        padding: EdgeInsets.symmetric(vertical: width * 0.04),
        child: Column(
          children: [
            Container(
              decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: colorGrey)
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(image,height: width *0.15,width: width * 0.15,),),
            ),
            SizedBox(height: width * 0.04,),
            Text(label1 + " "+label2 ,maxLines:2 ,overflow:TextOverflow.ellipsis,textAlign: TextAlign.center,style: TextStyle(fontSize: width * 0.03, fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
  }
}
