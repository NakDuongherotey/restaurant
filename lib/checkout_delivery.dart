import 'package:flutter/material.dart';
import 'package:restaurant/Order_complete.dart';

class checkout_delivery extends StatefulWidget {
  const checkout_delivery({super.key});

  @override
  State<checkout_delivery> createState() => _checkout_deliveryState();
}
class _checkout_deliveryState extends State<checkout_delivery> {
   bool isDisabled = true;
   String? select;
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Color(0xFF000000),
        ),
        backgroundColor:const Color(0xFFF5F5F8),
        centerTitle: true,
        title: const Text(                        // Title in AppBar 
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
            child: Container(                                   // Tile Delivery
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
                children:  [
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(                                    // title Address detaile
                      'Address details',
                      style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFF000000)),
                      textAlign: TextAlign.start,
                      ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 120),
                    child: TextButton(                              // Button edit mode for edit in text field 
                      onPressed: (){
                        setState(() {
                          isDisabled = false;                       // when onPressed in the textfield can input to change data
                        });
                      },
                     child: const Text(
                      'change',
                      style: TextStyle(color: Color(0xFFFA4A0C)),
                      )),
                  )
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
              child: Column(                                  // it has  3 text field in Address detailes
                children:  [
                     SizedBox(
                      height: 50,
                      width: 240,
                      child: TextField(
                        enabled: !isDisabled,
                        decoration: const InputDecoration(
                          labelText: 'Thelma Sara-bear',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      width: 240,
                      child: TextField(
                        enabled: !isDisabled,
                        decoration: const InputDecoration(
                          labelText: 'Trasaco hotel,behind navrongo campus',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      width: 240,
                      child: TextField(
                        enabled: !isDisabled,
                        decoration: const InputDecoration(
                          labelText: '+233 54138989 ',
                        ),
                      ),
                    ),
                  
                ],
              ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
             padding: const EdgeInsets.only(left: 20),                    // title delivery method
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
                child: Column(                        // it has two RadioListTile 
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
          SizedBox(
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
                    Navigator.push(
                      context, MaterialPageRoute(
                        builder: (context)=>
                        const Order_complete()
                      )
                    );
                  }, 
                  child: const Text(
                    'Proceed to Payment',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFFF6F6F9)
                  ),
                )
              ),
            ),
           ),
        ],
      ),
    );
  }
}