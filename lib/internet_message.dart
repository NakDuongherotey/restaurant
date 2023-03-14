import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Message_internet_screen extends StatefulWidget {
  const Message_internet_screen({super.key});

  @override
  State<Message_internet_screen> createState() => _Message_internet_screenState();
}

class _Message_internet_screenState extends State<Message_internet_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            alignment: Alignment.bottomCenter,
            child: const Icon(
              Icons.wifi_off,
              size: 100,
              color: Color(0xFFC7C7C7),
              ),
          ),
          Container(
            height: 50,
            width: double.infinity,
            alignment: Alignment.center,
            child: const Text(
              'No Internet Connection',
              style: TextStyle(
                fontSize: 30,
                color: Color(0xFF000000),
              ),
            ),
          ),
          Container(
            height: 50,
            width: 300,
            alignment: Alignment.center,
            child: const Text(
              'Your internet connection is currently not available please check or try again.',
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
              height: 70,
              width: 300,
              decoration: BoxDecoration(
                color: const Color(0xFFFA4A0C),
                borderRadius: BorderRadius.circular(50)
                ),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 14),
                child: TextButton(
                  onPressed: (){}, 
                child: Text(
                  'Try again',
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