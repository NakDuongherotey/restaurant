import 'package:flutter/material.dart';
import 'package:restaurant/Profile_detaile.dart';

class Profile_screen extends StatefulWidget {
  const Profile_screen({super.key});

  @override
  State<Profile_screen> createState() => _Profile_screenState();
}

class _Profile_screenState extends State<Profile_screen> {
  String? option;
  @override
  Widget build(BuildContext context) {
   String _character = 'card';
    return Scaffold(
       appBar: AppBar(
        leading: const BackButton(
          color: Color(0xFF000000),
        ),
        backgroundColor:const Color(0xFFF5F5F8),
        centerTitle: true,
        title: const Text(
          'My Profile',
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
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
             padding: const EdgeInsets.only(left: 20),
              height: 50,
              width: double.infinity,
              alignment: Alignment.centerLeft,
              child: const Text(
                'Information',
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF000000),
                ),
              ),
            ),
          ),
          Container(
             alignment: Alignment.center,
              height: 130,
              width: 350,
              decoration: BoxDecoration(
                  color: const Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(bottom: 50),
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
                              title: Text(
                                'Thelma Sara-bear',
                                style: TextStyle(
                                fontSize: 15,
                                color: Color(0xFF000000)),
                                textAlign: TextAlign.start,
                                ),
                                subtitle: Text('thelma_sara-bear@gmail.com'),
                            ),
                            ListTile(
                              subtitle: Text('Trasaco hotel, berhind navrongo campus'),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
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
                'Payment Method',
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
              height: 200,
              width: 350,
              //color: Colors.blueAccent,
              decoration: BoxDecoration(
                  color: const Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(20)
                  ),
              child: Expanded(
                child: Column(
                  children:  <Widget>[
                    RadioListTile(
                      title: const Text('Card'),
                      value: 'card', 
                      groupValue: option, 
                      onChanged: (value){
                        setState(() {
                          option = value.toString();
                        });
                      }),
                    RadioListTile(
                      title:const Text('Mobile Money(MTN,VODA)'),
                      value: 'mobile', 
                      groupValue: option, 
                      onChanged: (value){
                        setState(() {
                          option = value.toString();
                        });
                      }),
                      RadioListTile(
                      title:const Text('Pay on delivery'),
                      value: 'pay', 
                      groupValue: option, 
                      onChanged: (value){
                        setState(() {
                          option = value.toString();
                        });
                      })
                  ],
                ),
              ),
            ),
          ),
          Padding(
             padding: const EdgeInsets.only(top: 100),
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
                     profile_detaile() 
               ),
               );
                    }, 
                  child: const Text(
                    'Update Information',
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