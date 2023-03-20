import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:restaurant/Cart_screen.dart';
import 'package:restaurant/menu_food.dart';

class detile_food extends StatefulWidget {
  const detile_food({super.key});

  @override
  State<detile_food> createState() => _detile_foodState();
}

class _detile_foodState extends State<detile_food> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F6F9),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFFF5F5F8),
        leading: BackButton(
          color: const Color(0xFF000000),
          onPressed: ()  {
            Navigator.push(
              context, MaterialPageRoute(
                builder: (context)=> const menu_food()
              )
            );
          }
        ),
        actions: [
          IconButton(
            onPressed: (){},
            color: Color(0xFF000000),
            icon: const Icon(
              Icons.heart_broken,
              size: 20
            )
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Container(
              height: 200,
              width: 200,
              //alignment: Alignment.topCenter,
               decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/photo/3.png')
                    )
                ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 40,
              width: 300,
              alignment: Alignment.bottomCenter,
              child:const Text(
                'Tomato Veggie',
                style: TextStyle(
                  fontSize: 25,
                  color: Color(0xFF000000),
                )
                )
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Container(
              height: 50,
              width: double.infinity,
              alignment: Alignment.bottomCenter,
              child:const Text(
                'GHS 8.00',
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFFFA4A0C),
                )
                )
            ),
          ),
          Container(
            height: 200,
            width: 300,
            alignment: Alignment.center,
            child:Column(
              children: const [
                ListTile(
                  title: Text(
                      'Delivery info',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF000000),
                      ),
                      ),
                  subtitle: Text('Delivered between monday aug and thursday 20 from 8pm to 9:32 pm'),
                ),
                ListTile(
                  title: Text(
                      'Return policy',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF000000),
                      ),
                      ),
                  subtitle: Text('All our foods are double checked before leaving our stores so by any case you found a broken food please contact out hotline immediately.'),
                ),
              ]
            )
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
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
                      onPressed: (){
                    Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context) => 
                        const Cart_screen()//menu screen chang//history
                 ),
                 );
                 }, 
                    child: const Text(
                      'Add to Cart',
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