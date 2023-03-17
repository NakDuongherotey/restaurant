import 'package:flutter/material.dart';
import 'package:restaurant/Cart_screen.dart';
import 'package:restaurant/Profile_screen.dart';
import 'package:restaurant/checkout_payment.dart';
import 'package:restaurant/login.dart';
import 'package:restaurant/menu_food.dart';
import 'package:restaurant/sign_up.dart';
import 'package:restaurant/search_screen.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(length: 2, 
      child: Scaffold(
        //backgroundColor: const Color(0xFFFFFFFF),
        body: Column(
          children: [
            Container(
              height: 300,
              width: 400,
              decoration: BoxDecoration(
                color:const Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(30)
              ),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topCenter,
                    height: 240,
                    child: const Image(
                      image: AssetImage('assets/photo/images.png')
                      ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 12),
                    child: TabBar(tabs: [
                      Tab(text: 'sigin',),
                      Tab(text: 'sign-up',)
                    ],
                    labelColor: Color(0xFF000000),
                    indicatorColor: Color(0xFFFA4A0C),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            // ignore: sized_box_for_whitespace
            Container(
              height: 470,
              width: double.infinity,
              child: const TabBarView(
                children: [
                  sigin(),
                  sign_up(),
              ]),
            ),
          ],
        ),
      )),
    );
  }
}