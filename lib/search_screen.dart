// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:restaurant/search_food.dart';



class Search_screen extends StatefulWidget {
  const Search_screen({super.key});

  @override
  State<Search_screen> createState() => _Search_screenState();
}

class _Search_screenState extends State<Search_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Color(0xFF000000),
        ),
        backgroundColor:const Color(0xFFF5F5F8),
        actions: [
          IconButton(
            onPressed: (){
            Navigator.push(
              context, 
              MaterialPageRoute(
                builder: (context)=> search_screen()));
            }, 
            icon: const Icon(
              Icons.search,
              color: Color(0xFF000000),))
        ],
       ),
      body: Column(
        children: [
          Container(                           //Icon search
            height: 300,
            width: double.infinity,
            alignment: Alignment.bottomCenter,
            child: const Icon(
              Icons.search,
              size: 150,
              color: Color(0xFFC7C7C7),
              ),
          ),
          Container(                        //this is a title
            height: 50,
            width: double.infinity,
            alignment: Alignment.center,
            child: const Text(
              'Item not found',
              style: TextStyle(
                fontSize: 30,
                color: Color(0xFF000000),
              ),
            ),
          ),
          Container(                       //this is a title
            height: 50,
            width: 200,
            alignment: Alignment.center,
            child: const Text(
              'Try searching the item with a different keyword',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                color: Color(0xFF000000),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
