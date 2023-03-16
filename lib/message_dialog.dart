import 'package:flutter/material.dart';
import 'package:restaurant/Profile_detaile.dart';
import 'package:restaurant/login_screen.dart';

class sign_up extends StatelessWidget {
  const sign_up({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFEEEEEE),
                borderRadius: BorderRadius.circular(30)
              ),
              child: Column(
               crossAxisAlignment: CrossAxisAlignment.center,
               mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 100),
                    child: Container(
                      width: 100,
                      height:100,
                      decoration:  const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/photo/images.png'),
                          fit: BoxFit.cover),
                      ),
                      
                      
                    ),
                  ),
                  Container(
                    margin:const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 100),
                          child: TextButton(
                            onPressed:(){
                              Navigator.pop(
                              context, 
                              MaterialPageRoute(
                                builder: (context) => 
                                const login()
                              ),
                              );
                            }, 
                            child:const Text('Login'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 100),
                          child: TextButton(
                            onPressed: (){
                        
                            },
                            child: const Text('Sign-up'),
                          ),
                        )
            
                      ],
                    ),
                  ),
                  
                ],
              ),
            ),
            Container(
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
                  padding: const EdgeInsets.only(top: 100),
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