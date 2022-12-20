import 'package:flutter/material.dart';
import 'package:poutry_baba_screen/const/constant.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:poutry_baba_screen/generated/assets.dart';
import 'package:poutry_baba_screen/view/bottom_navigation_screen.dart';

import 'components/button.dart';
import 'components/payment_method_tile.dart';
import 'model/payment_info_model.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        sliderTheme: SliderThemeData(
          thumbShape:const RoundSliderThumbShape(elevation: 0),
          //overlayShape: SliderComponentShape.noThumb
          trackShape: CustomTrackShape(),
          overlayColor: Colors.transparent,
            ),
        textTheme: GoogleFonts.latoTextTheme(Theme.of(context).textTheme),
        primaryTextTheme:
        GoogleFonts.latoTextTheme(Theme.of(context).textTheme),
        primarySwatch: Colors.blue,
      ),
      home:const BottomNavigationScreen(),
    );
  }
}

class CustomTrackShape extends RoundedRectSliderTrackShape {
  @override
  Rect getPreferredRect({
    required RenderBox parentBox,
    Offset offset = Offset.zero,
    required SliderThemeData sliderTheme,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    final trackHeight = sliderTheme.trackHeight;
    final trackLeft = offset.dx;
    final trackTop = offset.dy + (parentBox.size.height - trackHeight!) / 2;
    final trackWidth = parentBox.size.width;
    return Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight);
  }
}




