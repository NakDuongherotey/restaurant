// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:restaurant/checkout_delivery.dart';
import 'package:restaurant/sign_up.dart';

class checkout_screen extends StatefulWidget {
  const checkout_screen({super.key});

  @override
  State<checkout_screen> createState() => _checkout_screenState();
}

class _checkout_screenState extends State<checkout_screen> {
  String? select;
  String? choose;
  @override
  Widget build(BuildContext context) {
    
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
                   RadioListTile(
                      title: const Text('Card'),
                      value: 'card', 
                      groupValue: choose, 
                      onChanged: (value){
                        setState(() {
                          choose = value.toString();
                        });
                      }),
                    RadioListTile(
                      title:const Text('Mobile Money(MTN,VODA)'),
                      value: 'mobile', 
                      groupValue: choose, 
                      onChanged: (value){
                        setState(() {
                          choose = value.toString();
                        });
                      })
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
                   RadioListTile(
                      title: const Text('Door dlivery'),
                      value: 'door', 
                      groupValue: select, 
                      onChanged: (value){
                        setState(() {
                          select = value.toString();
                        });
                      }),
                    RadioListTile(
                      title:const Text('Pick up'),
                      value: 'pickup', 
                      groupValue: select, 
                      onChanged: (value){
                        setState(() {
                          select = value.toString();
                        });
                      })
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
            onPressed: (){
               Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => 
                          const checkout_delivery()
                        )
                      );
            }, 
            child: Text(
              'Proceed',
              style: TextStyle(color: Color(0xFFFA4A0C)),)),
        )
      ],
    );
    },  
  );  
}  