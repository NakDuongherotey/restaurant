// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class list_button{
  String? title;
  IconData icon;
  int? size;
  list_button({this.title, this.size,required this.icon});
}
List <list_button> List_button = [
   list_button(title: "Orders",size:220  ,icon: Icons.navigate_next ),
   list_button(title: "Pending reviews",size:100  , icon: Icons.navigate_next ),
   list_button(title: "Faq", size:220  ,icon: Icons.navigate_next ),
   list_button(title: "Help",size:220  , icon: Icons.navigate_next )
   
];