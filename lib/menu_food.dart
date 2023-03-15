// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:restaurant/detile_food.dart';
import 'List_Product.dart';

class menu_food extends StatefulWidget {
  const menu_food({super.key});

  @override
  State<menu_food> createState() => _menu_foodState();
}

class _menu_foodState extends State<menu_food> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2),
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
              alignment: AlignmentDirectional.bottomStart,
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
           Padding(
             padding: EdgeInsets.all(8.0),
             child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                prefixIcon: Icon(Icons.search, color: Color(0xFF000000),),
                hintText: 'Search',
              ),
                     ),
           ),
          Expanded(
            child: Container(
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
          ),
          Container(
            width: double.infinity,
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(list.length, (index) => 
                InkWell(
                  onTap:() {
                      Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const detile_food(),
                              )
                      );
                  },
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(top: 50),
                          alignment: Alignment.topCenter,
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(list[index].image.toString()))
                          ),
                          
                        ),
                        Container(
                            alignment: Alignment.center,
                            height: 140,
                            width: 140,
                            decoration: BoxDecoration(
                              color: const Color(0xFFFFFFFF),
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: Stack(
                              children:[ 
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    alignment: Alignment.center,
                                    padding: EdgeInsets.only(bottom: 40),
                                    child: Text(list[index].name.toString(),
                                      style: const TextStyle( 
                                        fontSize: 15,
                                        color: Color(0xFF000000)
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  child: Text(list[index].id.toString(),
                                    style: const TextStyle( 
                                      fontSize: 10,
                                      color: Color(0xFFFA4A0C),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                      ],
                    ),
                ),
              ),
            ),
          ),
          Container(
            height: 100,
            width: double.infinity,
            alignment: Alignment.bottomCenter,
            child: Row(
              children: [
                Expanded(
                  child: IconButton(
                    alignment:Alignment.center,
                    onPressed: (){}, 
                    icon: const Icon(Icons.home),
                  ),
                ),
                Expanded(
                  child: IconButton(
                    alignment: Alignment.center,
                    onPressed: (){},
                    icon:const Icon(Icons.heart_broken),
                  ),
                ),
                Expanded(
                  child: IconButton(
                    alignment: Alignment.center,
                    onPressed: (){},
                    icon:const Icon(Icons.person),
                  ),
                ),
                Expanded(
                  child: IconButton(
                    alignment:Alignment.center,
                    onPressed: (){},
                    icon:const Icon(Icons.history),
                  ),
                ),
              ],
            ),
          )
        ],
      ), 
    );
  }
}