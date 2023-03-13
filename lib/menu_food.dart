// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class menu_food extends StatefulWidget {
  const menu_food({super.key});

  @override
  State<menu_food> createState() => _menu_foodState();
}

class _menu_foodState extends State<menu_food> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEFEEEE),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 120,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(70.90),
                child: IconButton(
                  alignment: Alignment.bottomRight,
                  onPressed: (){}, 
                  icon: const Icon(
                    Icons.menu,
                    color: Color(0xFF000000),
                    size: 24,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(70.90),
                child: IconButton(
                  alignment: AlignmentDirectional.bottomEnd,
                  onPressed: (){}, 
                  icon: const Icon(
                    Icons.shopping_bag_rounded,
                    size: 24,
                    color: Color(0xFF000000),
                  ),
                ),
              ),
            ],
          ),  
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: const Text(
                'Delicious food for you',
                style: TextStyle(
                  fontSize: 40,
                  color: Color(0xFF000000),
               ),
               textAlign: TextAlign.start,
               ),
            ),
          ),
          const Padding(
             padding: EdgeInsets.all(8.0),
             child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                focusColor: Color(0xFFEFEEEE),
                icon: Icon(Icons.search,
                  color: Color(0xFF000000),
                ),
                hintText: 'Search',
              ),
                     ),
           ),
          Container(
            width: double.infinity,
            height: 50,
            child: Row(
              children:  [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextButton(
                    onPressed: (){}, 
                    child: const Text('Foods')),
                ),
                 Padding(
                   padding: const EdgeInsets.all(10.0),
                   child: TextButton(
                    onPressed: (){}, 
                    child: const Text('Drirks')),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                    child: TextButton(
                      onPressed: (){}, 
                      child: const Text('Snaks')),
                ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                      child: TextButton(
                        onPressed: (){}, 
                        child: const Text('Sauce')),
                ),
            ],),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              height: 10,
              alignment: AlignmentDirectional.bottomEnd,
              child: const Text(
                'see more',
                style: TextStyle(
                  fontSize: 10,
                  color: Color(0xFFFA4A0C),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}