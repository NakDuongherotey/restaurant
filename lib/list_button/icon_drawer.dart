import 'package:flutter/material.dart';
import 'package:restaurant/list_button/list_button.dart';

class icon_drawer{
  String? title;
  IconData? icon;
  int? color;
  icon_drawer({this.title, this.icon, this.color});
}
List<icon_drawer>list_icon = [
  icon_drawer(icon: Icons.person, title: ' Profile', color: 0xFFFFFFFF),
  icon_drawer(icon: Icons.shopping_basket, title: ' Orders', color: 0xFFFFFFFF),
  icon_drawer(icon: Icons.local_offer, title: ' pffer and promo', color: 0xFFFFFFFF),
  icon_drawer(icon: Icons.sticky_note_2,title: ' Privacy policy', color: 0xFFFFFFFF),
  icon_drawer(icon: Icons.security, title: ' Security', color: 0xFFFFFFFF),
];