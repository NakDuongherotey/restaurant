import 'package:flutter/material.dart';
import 'package:restaurant/Profile_screen.dart';
import 'package:restaurant/search_screen.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
        body: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              color: Color(0xFFEEEEEE),
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
                        TextButton(
                          onPressed:(){}, 
                          child:const Text('Login'),
                        ),
                        TextButton(
                          onPressed: (){},
                          child: const Text('Sign-up'),
                        )
            
                      ],
                    ),
                  ),
                  
                ],
              ),
            ),
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
                    obscureText: true,
                    decoration: InputDecoration(
                        label: Text('Password'),
                        hintText: 'Enter Your password',
                       ),
                    ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 200),
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
                alignment: Alignment.bottomCenter,
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
                      const Search_screen()//menu screen chang//history
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
    );
  }
}