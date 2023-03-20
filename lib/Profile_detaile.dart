

import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:restaurant/Order.dart';
import 'package:restaurant/list_button/list_button.dart';
import 'list_button/List_Product.dart';

class profile_detaile extends StatefulWidget {
  const profile_detaile({super.key});

  @override
  State<profile_detaile> createState() => _profile_detaileState();
}

class _profile_detaileState extends State<profile_detaile> {
   final controller = TextEditingController();
 
  bool isDisabled = true;
    File? selectimage;
    String image64 = "";
    Future<void> chooseImage(Type) async {
      var image;
      if(Type == "camera"){
        image = await ImagePicker().pickImage(source: ImageSource.camera, imageQuality: 10);
      }else{
        image = await ImagePicker().pickImage(source: ImageSource.gallery, imageQuality: 25);
      }
      if(image != null){
        setState(() {
          selectimage = File(image.path);
          image64 = base64Encode(selectimage!.readAsBytesSync());
        });
      }
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        leading: const BackButton(
          color: Color(0xFF000000),
        ),
        backgroundColor:const Color(0xFFF5F5F8),
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
                'My profile',
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
                    child: Text(
                      'Personal details',
                      style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFF000000)),
                      textAlign: TextAlign.start,
                      ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 120),
                    child: TextButton(
                      onPressed: (){
                        setState(() {
                          isDisabled = false;
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
              height: 200,
              width: 350,
              decoration: BoxDecoration(
                  color: const Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Row(
                children: [
                  Stack(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        child: ClipOval(
                          child: selectimage != null
                          ? Image.file(
                            selectimage!,
                            fit: BoxFit.cover,
                            height: 200,
                            width: 200,
                          )
                          : Image.network(
                            'https://www.google.com/url?sa=i&url=https%3A%2F%2Fpixabay.com%2Fvectors%2Fblank-profile-picture-mystery-man-973460%2F&psig=AOvVaw1L98PDgklJBTeysqJVhjEn&ust=1679109787314000&source=images&cd=vfe&ved=0CAwQjRxqFwoTCNDt0sSB4v0CFQAAAAAdAAAAABAE',
                            fit: BoxFit.cover,
                            width: 200,
                            height: 200,)
                        ),
                      ),
                    Positioned(
                      bottom: 10,
                      right: 10,
                      child: InkWell(
                        onTap:() {
                          chooseImage('Camera');
                        },
                        child: const Icon(Icons.camera_alt,
                        color: Color(0xFF000000),
                        size: 20,),
                      )
                    )
                   ]
                  ),
                  Expanded(
                    child: Container(
                      height:200,
                      width: 250,
                      child: Column(
                        children: [
                           const SizedBox(
                            height: 30,
                             child: ListTile(
                              title: Text(
                                'Thelma Sara-bear',
                                style: TextStyle(
                                fontSize: 15,
                                color: Color(0xFF000000)),
                                textAlign: TextAlign.start,
                                ),
                                                     ),
                           ),
                          SizedBox(
                            height: 50,
                            width: 240,
                            child: TextField(
                              enabled: !isDisabled,
                              decoration: const InputDecoration(
                                labelText: 'thelma_sara-bear@gmail.com',
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
                          SizedBox(
                            height: 50,
                            width: 240,
                            child: TextField(
                              enabled: !isDisabled,
                              decoration: const InputDecoration(
                                 labelText: 'Trasaco hotel, behaind nabrongo campus',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
          ),
          Container(
            width: 350,
            height: 250,
           // alignment: Alignment.center,
            child: ListView(
              scrollDirection: Axis.vertical, 
              children: List.generate(List_button.length,(index)=>
                 InkWell(
                  onTap:() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                      builder: (context) => 
                     const Order_screen()
                )
              );
                  },
                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(50)
                      ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              List_button[index].title.toString(),
                              style:const TextStyle(
                                  fontSize: 20,
                                  color: Color(0xFF000000)),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 100),
                          child: Icon(
                            List_button[index].icon,
                            ),
                        )
                        ],
                      ),
                   ),
                 ),
                
                 )
                 )
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
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
                   }, 
                 child: const Text(
                   'Update',
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