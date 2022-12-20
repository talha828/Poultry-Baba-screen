
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:poutry_baba_screen/const/constant.dart';
import 'package:poutry_baba_screen/generated/assets.dart';
import 'package:poutry_baba_screen/main.dart';
import 'package:poutry_baba_screen/view/my_order_screen.dart';
import 'package:poutry_baba_screen/view/payment_method_screen.dart';
import 'package:poutry_baba_screen/view/product_details.dart';

import 'cart_screen.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    PaymentScreen(),
    MyOrderScreen(),
    CartScreen(),
    ProductDetails(),
    Text('Profile Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          selectedLabelStyle:  GoogleFonts.montserrat(
            textStyle: TextStyle(fontSize: width* 0.025, fontWeight: FontWeight.bold),
          ),
          items:  <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: CircleAvatar(
                    backgroundColor: _selectedIndex==0?appMainColor3.withOpacity(0.5):Colors.white,
                    child: Image.asset(Assets.iconHouse,color: _selectedIndex==0?appMainColor3:Colors.grey,width: width * 0.065,)),
                label: 'Home',
                backgroundColor: Colors.white
            ),
            BottomNavigationBarItem(
                icon: CircleAvatar(
                    backgroundColor: _selectedIndex==1?appMainColor3.withOpacity(0.5):Colors.white,
                    child:Image.asset(Assets.iconTrophy,color: _selectedIndex==1?appMainColor3:Colors.grey,width: width * 0.065,)),
                label: 'Top Offer',
                backgroundColor: Colors.white
            ),
            BottomNavigationBarItem(
              icon: CircleAvatar(
                  backgroundColor:_selectedIndex==2?appMainColor3.withOpacity(0.5):Colors.white,
                  child: Image.asset(Assets.iconSupplyChain,color: _selectedIndex==2?appMainColor3:Colors.grey,width: width * 0.065,)),
              label: 'Product',
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: CircleAvatar(
                  backgroundColor:_selectedIndex==3?appMainColor3.withOpacity(0.5):Colors.white,
                  child: Image.asset(Assets.iconStore,color: _selectedIndex==3?appMainColor3:Colors.grey,width: width * 0.065,)),
              label: 'Murghi Mondi',
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: CircleAvatar(
                  backgroundColor:_selectedIndex==4?appMainColor3.withOpacity(0.5):Colors.white,
                  child: Image.asset(Assets.iconAccount,color: _selectedIndex==4?appMainColor3:Colors.grey,width: width * 0.065,)),
              label: 'Account',
              backgroundColor: Colors.white,
            ),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          unselectedItemColor: Colors.grey,
          selectedItemColor: appMainColor3,
          iconSize: 40,
          onTap: _onItemTapped,
          backgroundColor: Colors.white,
          elevation: 5
      ),
      body:Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
    );
  }
}


