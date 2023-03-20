import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'menu_food.dart';

class sigin extends StatelessWidget {
  const sigin({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFF2F2F2),
      child:Column(
          children: [
            Container(
              height: 450,
              width: 300,
              child: Column(
                children: [
                  const Padding(
                      padding: EdgeInsets.all(8.0),
                          child: TextField(                             // text field for input email address
                            decoration: InputDecoration(
                              label:Text('Email Address'),
                              hintText: 'Enter Your Address'
                            ),
                          ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                        child: TextField(                               // text field for input password
                          obscureText: true,
                          decoration: InputDecoration(
                              label: Text('Password'),
                              hintText: 'Enter Your password',
                            ),
                          ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 150),
                    child: TextButton(
                      onPressed: (){},
                      child:const Text(
                        'Forgot password?',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.red),
                      ),
                    ),
                  ),
                  
                  Padding(
                  padding: const EdgeInsets.only(top: 150),
                  child: Container(
                      alignment: Alignment.bottomCenter,                  //buuto login and push to screen Menu food 
                      height: 60,
                      width: 300,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFA4A0C),
                        borderRadius: BorderRadius.circular(50)
                        ),
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: TextButton(
                          onPressed: (){
                            Navigator.push(
                              context, 
                              MaterialPageRoute(
                                builder: (context) => 
                                const menu_food()                            //menu screen 
                              ),
                            );
                          }, 
                          child: const Text(
                            'login',
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
            )
          
          ],
        ),
    );
  }
}