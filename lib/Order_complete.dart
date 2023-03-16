import 'package:flutter/material.dart';

class Order_complete extends StatelessWidget {
  const Order_complete({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: const Color(0xFFFFFFFF),
        leading: const BackButton(
          color: Color(0xFF000000),
        ),
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              alignment: Alignment.center,
              height: 30,
              width: double.infinity,
              child:const Text(
                'Order Complete',
                style: TextStyle(
                  fontSize: 30,
                  color: Color(0xFF000000)
                ),
                ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 150,
              width: double.infinity,
              child: const Icon(
                Icons.shopping_cart_rounded,
                color: Color(0xFFC7C7C7),
                size:150 ,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Container(
              height: 50,
              width: double.infinity,
              alignment: Alignment.center,
              child: const ListTile(
                title: Text(
                  'Thank you for Ordering',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    color: Color(0xFF000000)
                  ),
                ),
                subtitle: Text(
                  'Your delivery will be in soon.',
                  textAlign: TextAlign.center,),
              ),
            ),
          )
        ],
      ),
    );
  }
}