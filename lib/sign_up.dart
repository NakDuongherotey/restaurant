import 'package:flutter/material.dart';
import 'package:restaurant/Profile_detaile.dart';
import 'package:restaurant/login_screen.dart';

class sign_up extends StatelessWidget {
  const sign_up({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 50),
              height: 450,
              width: 300,
              child: Column(
                children: [
                  const Padding(
                      padding: EdgeInsets.all(8.0),
                          child: TextField(
                            decoration: InputDecoration(
                              label:Text('Email Address'),
                              hintText: 'Enter Your Address'
                            ),
                          ),
                  ),
                  const Padding(
                      padding: EdgeInsets.all(8.0),
                          child: TextField(
                            decoration: InputDecoration(
                              label:Text('Phone Number'),
                              hintText: 'Enter Your Phone Number'
                            ),
                          ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                        child: TextField(
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
                  padding: const EdgeInsets.only(top: 80),
                  child: Container(
                      alignment: Alignment.bottomCenter,
                      height: 60,
                      width: 400,
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
                            const profile_detaile()
                            //menu screen chang//history
                    ),
                    );
                    }, 
                        child: const Text(
                          'Register',
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