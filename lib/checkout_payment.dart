// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:restaurant/message_dialog.dart';

class checkout_screen extends StatefulWidget {
  const checkout_screen({super.key});

  @override
  State<checkout_screen> createState() => _checkout_screenState();
}
enum radio { payment, delivery }
enum die { door, pickup }
class _checkout_screenState extends State<checkout_screen> {
  @override
  Widget build(BuildContext context) {
    radio? _character = radio.payment;
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
                'Payment',
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
             padding: const EdgeInsets.only(left: 20),
              height: 50,
              width: double.infinity,
              alignment: Alignment.centerLeft,
              child: const Text(
                'Payment method',
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF000000),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Container(
              alignment: Alignment.center,
              height: 150,
              width: 350,
              //color: Colors.blueAccent,
              decoration: BoxDecoration(
                  color: const Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(20)
                  ),
              child: Expanded(
                child: Column(
                  children:  [
                    ListTile(
                      title: const Text('Card'),
                      leading: Radio<radio>(
                        value: radio.payment,
                        groupValue: _character,
                        onChanged: (radio? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    ),
                    const Divider(
                      height: 20,
                    ),
                    ListTile(
                      title: const Text('Mobile Money (MTN,VODA)'),
                      
                      leading: Radio<radio>(
                        value: radio.delivery,
                        groupValue: _character,
                        onChanged: (radio? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
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
                  fontSize: 20,
                  color: Color(0xFF000000),
                ),
              ),
            ),
          ),
           Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Container(
              alignment: Alignment.center,
              height: 150,
              width: 350,
              //color: Colors.blueAccent,
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
                      height: 20,
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
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
                    onPressed: ()async{
                     final Future<ConfirmAction?> action = await _asyncConfirmDialog(context);     
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
           ),
        ],
      ),
    );
  }
}
enum ConfirmAction { Cancel, Accept}  
Future<Future<ConfirmAction?>> _asyncConfirmDialog(BuildContext context) async {  
  return showDialog<ConfirmAction>(  
    context: context,  
    barrierDismissible: false, // user must tap button for close dialog!  
    builder: (BuildContext context) {  
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30)
        ),
        title: Container(
        child: Column(
          children:const [
            ListTile(
              title: Text(
                'Please note',
                style: TextStyle(fontSize: 20),),
            ),
            Divider(
              height: 10,
            ),
            ListTile(
              title:Text('GHS 2 - GH 3'),
              subtitle: Text('DELIVERY TO TRASACO'),
            ),
            ListTile(
              title: Text('GHS 1'),
              subtitle: Text('DELIVERY TO CAMPUS'),
            )
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: (){ 
            Navigator.of(context).pop(ConfirmAction.Cancel);  
          }, 
          child: Text('cancel')
          ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextButton(
            onPressed: (){}, 
            child: Text('Proceed')),
        )
      ],
    );
    },  
  );  
}  