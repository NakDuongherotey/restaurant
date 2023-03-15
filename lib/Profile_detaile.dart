// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:restaurant/list_button/list_button.dart';
import 'List_Product.dart';

class profile_detaile extends StatefulWidget {
  const profile_detaile({super.key});

  @override
  State<profile_detaile> createState() => _profile_detaileState();
}

class _profile_detaileState extends State<profile_detaile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        leading: const BackButton(
          color: Color(0xFF000000),
        ),
        backgroundColor:const Color(0xFFF5F5F8),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: const EdgeInsets.only(left: 20),
              height: 50,
              width: double.infinity,
              alignment: Alignment.centerLeft,
              child: const Text(
                'My profile',
                style: TextStyle(
                  fontSize: 30,
                  color: Color(0xFF000000),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
             padding: const EdgeInsets.only(left: 10),
              height: 50,
              width: double.infinity,
              alignment: Alignment.centerLeft,
              child: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'Personal details',
                      style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFF000000)),
                      textAlign: TextAlign.start,
                      ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 150),
                    child: Text(
                      'change',
                      style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFFF47B0A)),
                      textAlign: TextAlign.start,
                      ),
                  ),
                ],
              ),
            ),
          ),
          Container(
             alignment: Alignment.center,
              height: 200,
              width: 350,
              decoration: BoxDecoration(
                  color: const Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(bottom: 50),
                    //alignment: Alignment.topLeft,
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(20),
                      image:const DecorationImage(
                        image: AssetImage('assets/photo/profile.png'),
                        fit: BoxFit.cover,
                        )
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height:200,
                      width: 250,
                      child: Expanded(
                        child: Column(
                          children: const[
                             ListTile(
                              subtitle: Text('thelma_sara-bear@gmail.com'),
                              title: Text(
                                'Thelma Sara-bear',
                                style: TextStyle(
                                fontSize: 15,
                                color: Color(0xFF000000)),
                                textAlign: TextAlign.start,
                                ),
                            ),
                            Divider(
                              height: 1,
                            ),
                            ListTile(
                              title: Text(
                                '+233 5413 8989',
                                style: TextStyle(
                                fontSize: 15,
                                color: Color(0xFF000000)),
                                textAlign: TextAlign.start,
                                ),
                            ),
                            Divider(
                              height: 1,
                            ),
                            ListTile(
                              title: Text(
                                'Trasaco hotel, berhind navrongo campus',
                                style: TextStyle(
                                fontSize: 15,
                                color: Color(0xFF000000)),
                                textAlign: TextAlign.start,
                                ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
          ),
          Container(
            width: 350,
            height: 250,
           // alignment: Alignment.center,
            child: ListView(
              scrollDirection: Axis.vertical, 
              children: List.generate(list.length, (index)=>
                 InkWell(
                  onTap:() {
                    
                  },
                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(50)
                      ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              List_button[index].title.toString(),
                              style:const TextStyle(
                                  fontSize: 20,
                                  color: Color(0xFF000000)),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 100),
                          child: Icon(
                            List_button[index].icon,
                            ),
                        )
                        ],
                      ),
                   ),
                 ),
                
                 )
                 )
            ),
          ),
          Container(
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
                 onPressed: (){
                 }, 
               child: const Text(
                 'Update',
                 style: TextStyle(
                   fontSize: 15,
                   color: Color(0xFFF6F6F9)),
                   )
                   ),
             ),
           ),
        ],
      ),
    );
  }
}