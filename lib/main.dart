import 'package:flutter/material.dart';
import 'package:restaurant/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      backgroundColor: Colors.red,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 60,
              width: 60,
              margin: const EdgeInsets.all(20.0),
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/photo/images.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const ListTile(
            title: Text(
              ' CALEB G',
              style: TextStyle(
                fontSize: 40,
                color: Colors.white),
              ),
          ),
          const ListTile(
            title: Text(
              'Restaurant',
              style: TextStyle(
                fontSize: 40,
                color: Colors.white),
            ),
          ),
          Container(
            height: 200,
            width: 200,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/photo/chef.png'),
                fit: BoxFit.cover)
            ),
          ),
           Padding(
             padding: const EdgeInsets.only(top: 150),
             child: Container(
                alignment: Alignment.bottomCenter,
                height: 60,
                width: 300,
                decoration: BoxDecoration(
                  color: const Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(50)
                  ),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: TextButton(
                   onPressed:(){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                 return const login();
                }));
              }, 
                  child: const Text(
                    'Get Started',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFFFF460A)),
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
