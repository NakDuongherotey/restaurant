import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:restaurant/list_button/List_Product.dart';
import 'package:restaurant/detile_food.dart';

class search_screen extends StatefulWidget {
  const search_screen({super.key});

  @override
  State<search_screen> createState() => _search_screenState();
}

class _search_screenState extends State<search_screen> {
  List<String> itemslist = [
    'Veggie tomato mix',
    'Spicy food',
    'Spicy food', 
  ];
  List<String>? itemsListSearch;
  final FocusNode _textFocusNonde = FocusNode();
  final TextEditingController? _textEditingController = TextEditingController();
@override
void dispose(){
  _textFocusNonde.dispose();
  _textEditingController!.dispose();
  super.dispose();
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF),
        leading:const BackButton(
          color:Color(0xFF000000),
        ),
        title: Container(
          width: double.infinity,
          height: 40,
          decoration: BoxDecoration(
            color: Color(0xFFFFFFFF),
            borderRadius: BorderRadius.circular(5)
          ),
          child:const Center(
            child:TextField(
              cursorColor: Color(0xFF000000),
              decoration: InputDecoration(
                prefix: Icon(Icons.search),
                hintText: 'Search here',
                border: InputBorder.none,
              ),
            ) ),
        ),
      ),
      body:Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 100,
            width: 400,
            child:const Text(
              'Found 8 results',
              style: TextStyle(fontSize: 20,
              color: Color(0xFF000000)),
              ),
          ),
          Container(
            height: 560,
            width: 400,
            alignment:Alignment.center,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 4.0,
                mainAxisSpacing: 4.0
              ),
              itemCount: list.length,
              itemBuilder: (BuildContext context, index) {
                return InkWell(
                  onTap:() => Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context)=> detile_food())),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(top: 50),
                          alignment: Alignment.topCenter,
                          width: 100,
                          height:100,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                list[index].image.toString()))
                          ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 90,
                        width: 100,
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Stack(
                          children:[ 
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.only(bottom: 40),
                                child: Text(list[index].name.toString(),
                                  style: const TextStyle( 
                                    fontSize: 15,
                                    color: Color(0xFF000000)
                                  ),
                                ),
                              ),
                            ), 
                            Container(
                              alignment: Alignment.center,
                              child: Text(
                                list[index].id.toString(),
                                style: const TextStyle( 
                                  fontSize: 10,
                                  color: Color(0xFFFA4A0C),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ), 
                     ],
                   ),
                );
               }
            )
          ),
        ],
      ),
    );
  }
}