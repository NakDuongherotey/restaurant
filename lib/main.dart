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
        crossAxisAlignment: CrossAxisAlignment.start,
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
            margin: const EdgeInsets.all(25),
            alignment: Alignment.center,
            // ignore: sort_child_properties_last
            child: TextButton(
              onPressed:(){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                 return const login();
                }));
              }, 
            child: const Text('Get Starteed',style: TextStyle(fontSize: 20,color: Colors.black),)),
            color: Colors.white,
          )
          
        ],
      ),
    );
  }
}
