import 'package:flutter/material.dart';

class My_offer extends StatelessWidget {
  const My_offer({super.key});

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
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Container(
              padding: EdgeInsets.only(right: 160),
              alignment: Alignment.center,
              height: 50,
              width: double.infinity,
              child:const Text(
                'My offers',
                style: TextStyle(
                  fontSize: 30,
                  color: Color(0xFF000000)
                ),
                ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200),
            child: Container(
             // padding: EdgeInsets.only(bottom: 150),
              height: 50,
              width: double.infinity,
              alignment: Alignment.center,
              child: const ListTile(
                title: Text(
                  'ohh snap! No offer yet',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    color: Color(0xFF000000)
                  ),
                ),
                subtitle: Text(
                  'please check again.',
                  textAlign: TextAlign.center,),
              ),
            ),
          )
        ],
      ),
    );
  }
}