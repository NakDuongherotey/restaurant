import 'package:flutter/material.dart';
import 'package:restaurant/menu_food.dart';

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
              height: 200,
              width: double.infinity,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration:  const BoxDecoration(
                      color: Color(500),
                      image: DecorationImage(
                        image: AssetImage('assets/photo/images.png'),
                        fit: BoxFit.cover),
                    ),
                    width: 100,
                    height: 100,
                    
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
            TextButton(
              onPressed: (){},
              child:const Text(
                'Forgot password?',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.red),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.20),
              child: ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => const menu_food(),
               ),
               );
               },
                child: const Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white),
                    )
                ),
            ),
          ],
        ),
    );
  }
}