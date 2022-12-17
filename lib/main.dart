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
        textTheme: GoogleFonts.latoTextTheme(Theme.of(context).textTheme),
        primaryTextTheme:
        GoogleFonts.latoTextTheme(Theme.of(context).textTheme),
        primarySwatch: Colors.blue,
      ),
      home:const BottomNavigationScreen(),
    );
  }
}






