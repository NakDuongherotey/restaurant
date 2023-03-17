
// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

import 'List_Product.dart';

class Cart_screen extends StatefulWidget {
  const Cart_screen({super.key});

  @override
  State<Cart_screen> createState() => _Cart_screenState();
}

class _Cart_screenState extends State<Cart_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFFF5F5F8),
        leading:const BackButton(
          color: Color(0xFF000000),
        ),
        title:const Text(
          'Cart',
          style: TextStyle(
            fontSize: 20,
            color: Color(0xFF000000),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.bottomCenter,
            height: 50,
            width: double.infinity,
            child: Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 100),
                  child: Icon(
                    Icons.clean_hands,
                    size: 20,
                    color: Color(0xFF000000),
                    ),
                ),
                Text('swipe on an item to delete'),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 400,
              width: 400,
              alignment: Alignment.center,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: List.generate(list.length, (index) => 
                InkWell(
                  onTap: () {
                    
                  },
              
                  child: Container(
                   decoration: BoxDecoration(
                     color: const Color(0xFFFFFFFF),
                     borderRadius: BorderRadius.circular(20)
                     ),
                   child: Row(
                     children: [
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Container(
                           height: 100,
                           width: 122,
                           decoration: BoxDecoration(
                             shape: BoxShape.circle,
                             image: DecorationImage(
                               fit: BoxFit.cover,
                               image: AssetImage(list[index].image.toString()
                                )
                             )
                           ),
                         ),
                       ),
                       Container(
                         alignment: Alignment.topLeft,
                         //padding: const EdgeInsets.only(bottom: 50),
                        width: 150,
                        height: 100,
                        child: Column(
                         children: [
                           Text(list[index].name.toString(),
                             style: const TextStyle(
                               fontSize: 20,
                               color: Color(0xFF000000),
                             ),
                           ),
                           Text(list[index].id.toString(),
                             style: const TextStyle(
                               fontSize: 15,
                               color: Color(0xFFFA4A0C)
                             ),)
                           ],
                         ),
                       ), 
                     ]
                   )
                    ),
                )
              )
              )
            )
          )
        ],
      ),
    );
  }
}