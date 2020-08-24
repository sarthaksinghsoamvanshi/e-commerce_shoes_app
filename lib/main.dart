import 'package:ecommerce_shoes/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("MY STORE")),
        body: Column(children: [
          Container(
            width: double.infinity,
            color: Colors.amber,
            padding: EdgeInsets.all(10),
            height:50,
            child:Text("Products",style: TextStyle(fontSize:20,fontWeight:FontWeight.bold),),
          ),
          Container(
            color: Colors.black,
            height:280,
            padding: EdgeInsets.symmetric(horizontal:10),
            child:ListItems(),
          )
        ]),
      ),
    );
  }
}
