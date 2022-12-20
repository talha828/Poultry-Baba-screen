import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:poutry_baba_screen/const/constant.dart';

class ImageSlider extends StatelessWidget {
  const ImageSlider({
    Key? key,
    required this.width,
    required this.imageList,
  }) : super(key: key);

  final double width;
  final List imageList;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
          autoPlay: true,
          height: width * 0.5),
      items:imageList.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: MediaQuery.of(context).size.width,
                margin:const EdgeInsets.symmetric(horizontal: 6.0),
                decoration:const BoxDecoration(
                    //color: Colors.white
                ),
                child:Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height:MediaQuery.of(context).size.width * 0.5 ,
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(i,fit:BoxFit.cover,)),
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(width * 0.04),
                          child: const CircleAvatar(
                            backgroundColor: appMainColor3,
                            child: Icon(Icons.favorite,color: Colors.white,),),
                        ),
                        Padding(
                          padding: EdgeInsets.all(width * 0.04),
                          child: const CircleAvatar(
                            backgroundColor: appMainColor3,
                            child: Icon(Icons.share,color: Colors.white,),),
                        ),
                      ],
                    )
                  ],
                ));
          },
        );
      }).toList(),
    );
  }
}