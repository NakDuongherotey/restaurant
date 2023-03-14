// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class history_screen extends StatefulWidget {
  const history_screen({super.key});

  @override
  State<history_screen> createState() => _history_screenState();
}

class _history_screenState extends State<history_screen> {
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
          'History',
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
              Icons.calendar_month,
              size: 100,
              color: Color(0xFFC7C7C7),
              ),
          ),
          Container(
            height: 50,
            width: double.infinity,
            alignment: Alignment.center,
            child: const Text(
              'No History Yet',
              style: TextStyle(
                fontSize: 30,
                color: Color(0xFF000000),
              ),
            ),
          ),
          Container(
            height: 50,
            width: 200,
            alignment: Alignment.center,
            child: const Text(
              'Hit the orange button down below to Crate order',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                color: Color(0xFF000000),
              ),
            ),
          ),
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
                  padding: const EdgeInsets.only(bottom: 8),
                  child: TextButton(
                    onPressed: (){}, 
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