import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class checkout_delivery extends StatefulWidget {
  const checkout_delivery({super.key});

  @override
  State<checkout_delivery> createState() => _checkout_deliveryState();
}
enum die { door, pickup }
class _checkout_deliveryState extends State<checkout_delivery> {
  @override
  Widget build(BuildContext context) {
    die? _cher = die.door;
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Color(0xFF000000),
        ),
        backgroundColor:const Color(0xFFF5F5F8),
        centerTitle: true,
        title: const Text(
          'Checkout',
          textAlign: TextAlign.right,
          style: TextStyle(
            fontSize: 20,
            color: Color(0xFF000000)
          ),
          ),
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
                'Delivery',
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
                      'Address details',
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
              height: 190,
              width: 350,
              decoration: BoxDecoration(
                  color: const Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                children: const [
                  ListTile(
                    title: Text(
                      'Thelma Sara-bear',
                      style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFF000000)),
                      textAlign: TextAlign.start,
                      ),
                  ),
                  Divider(
                      height: 10,
                  ),
                  ListTile(
                    title: Text(
                      'Trasaco hotel,behind navrongo campus',
                      style: TextStyle(
                      fontSize: 10,
                      color: Color(0xFF000000)),
                      textAlign: TextAlign.start,
                      ),
                  ),
                  Divider(
                      height: 10,
                  ),
                  ListTile(
                    title: Text(
                      '+233 5413 8989',
                      style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFF000000)),
                      textAlign: TextAlign.start,
                      ),
                  )
                ],
              ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
             padding: const EdgeInsets.only(left: 20),
              height: 50,
              width: double.infinity,
              alignment: Alignment.centerLeft,
              child: const Text(
                'Delivery method',
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xFF000000),
                ),
              ),
            ),
          ),
           Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Container(
              alignment: Alignment.center,
              height: 140,
              width: 350,
              decoration: BoxDecoration(
                  color: const Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(20)
                  ),
              child: Expanded(
                child: Column(
                  children:  [
                    ListTile(
                      title: const Text('Door delivery'),
                      leading: Radio<die>(
                        value: die.door,
                        groupValue: _cher,
                        onChanged: (die? value) {
                          setState(() {
                            _cher = value;
                          });
                        },
                      ),
                    ),
                    const Divider(
                      height: 10,
                    ),
                    ListTile(
                      title: const Text('Pick up'),
                      leading: Radio<die>(
                        value: die.pickup,
                        groupValue: _cher,
                        onChanged: (die? value) {
                          setState(() {
                            _cher = value;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 50,
            width: double.infinity,
            child: Row(
              children: const[
                Padding(
                  padding: EdgeInsets.only(left: 40),
                  child: Text(
                    'Total',
                    textAlign: TextAlign.start,
                    ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 250),
                  child: Text(
                    '23,000',
                    textAlign: TextAlign.start,
                    ),
                ),
              ],
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
                 'Proceed to Payment',
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