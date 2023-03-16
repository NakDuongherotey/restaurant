// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:restaurant/my_offers.dart';

class Order_screen extends StatefulWidget {
  const Order_screen({super.key});

  @override
  State<Order_screen> createState() => _Order_screenState();
}

class _Order_screenState extends State<Order_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        leading: const BackButton(
          color: Color(0xFF000000),
        ),
        backgroundColor:const Color(0xFFF6F6F9),
        centerTitle: true,
        title: const Text(
          'Orders',
          textAlign: TextAlign.right,
          style: TextStyle(
            fontSize: 20,
            color: Color(0xFF000000)
          ),
          ),
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            alignment: Alignment.bottomCenter,
            child: const Icon(
              Icons.shopping_cart_rounded,
              size: 150,
              color: Color(0xFFC7C7C7),
              ),
          ),
          Container(
            height: 50,
            width: 250,
            alignment: Alignment.center,
             child: const ListTile(
                title: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'No Orders Yet',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      color: Color(0xFF000000)
                    ),
                  ),
                ),
                subtitle: Text(
                  'Hit the orange button down below to crate orde',
                  textAlign: TextAlign.center,),
              ),
             ),
             //const Text(
            //   'No Orders Yet',
            //   style: TextStyle(
            //     fontSize: 30,
            //     color: Color(0xFF000000),
            //   ),
            // ),
          //),
          // Container(
          //   height: 50,
          //   width: 200,
          //   alignment: Alignment.center,
          //   child: const Text(
          //     'Hit the orange button down below to Crate order',
          //     textAlign: TextAlign.center,
          //     style: TextStyle(
          //       fontSize: 15,
          //       color: Color(0xFF000000),
          //     ),
          //   ),
          // ),
          Padding(
             padding: const EdgeInsets.only(top: 150),
             child: Container(
                alignment: Alignment.bottomCenter,
                height: 60,
                width: 300,
                decoration: BoxDecoration(
                  color: const Color(0xFFFA4A0C),
                  borderRadius: BorderRadius.circular(50)
                  ),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: TextButton(
                    onPressed: (){
                      Navigator.push(
                        context, MaterialPageRoute(
                          builder: (context) =>
                          const  My_offer()
                          )
                          );
                    }, 
                  child: const Text(
                    'Start Ordering',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFFF6F6F9)),
                      )
                      ),
                ),
              ),
           ),
        ],
      ),
    );
  }
}