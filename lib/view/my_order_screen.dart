import 'package:flutter/material.dart';
import 'package:poutry_baba_screen/components/order_card.dart';
import 'package:poutry_baba_screen/const/constant.dart';
import 'package:poutry_baba_screen/generated/assets.dart';

class MyOrderScreen extends StatefulWidget {
  const MyOrderScreen({Key? key}) : super(key: key);

  @override
  State<MyOrderScreen> createState() => _MyOrderScreenState();
}

class _MyOrderScreenState extends State<MyOrderScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 2,
      child: SafeArea(
          child: Scaffold(
        appBar: AppBar(
          leading: const Icon(
            Icons.arrow_back_ios_new,
            color: appMainColor3,
          ),
          title: const Text(
            "My Order",
            style: TextStyle(color: appMainColor3, fontWeight: FontWeight.bold),
          ),
          flexibleSpace: Container(
            decoration: const BoxDecoration(gradient: gradient),
          ),
          actions: [
            Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                child: Icon(
                  Icons.search,
                  color: appMainColor3,
                )),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                child: Icon(
                  Icons.shopping_cart,
                  color: appMainColor3,
                )),
          ],
          bottom: TabBar(
            indicatorColor: appMainColor3,
            tabs: [
              Tab(
                text: "Active Order",
              ),
              Tab(
                text: "Order History",
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ActiveOrderScreen(),
            ActiveOrderScreen(),
          ],
        ),
      )),
    );
  }
}

class ActiveOrderScreen extends StatefulWidget {
  const ActiveOrderScreen({Key? key}) : super(key: key);

  @override
  State<ActiveOrderScreen> createState() => _ActiveOrderScreenState();
}

class _ActiveOrderScreenState extends State<ActiveOrderScreen> {
  String title="Poultry Baba Food nutrition for more (5kg)";
  String label="package out of Delivery";
  String image=Assets.iconTemp;
  var onCard=(){};
  var onIcon=(){};
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: width * 0.04,
          ),
          Expanded(
            child: ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context,index){
              return OrderCard(onCard: onCard, width: width, title: title, label: label, onIcon: onIcon);
            }, separatorBuilder: (context,index){
               return SizedBox(width: width * 0.03,);
            }, itemCount: 10),
          )
        ],
      ),
    );
  }
}
