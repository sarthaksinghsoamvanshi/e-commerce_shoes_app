import 'package:ecommerce_shoes/homepage.dart';
import 'package:ecommerce_shoes/listlong.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: Icon(Icons.menu, color: Colors.black),
          backgroundColor: Colors.white,
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            boxShadow: [BoxShadow(spreadRadius: 1,blurRadius: 10,color:Colors.black12)],
            color: Colors.white,
          ),
          child: BottomNavigationBar(
              selectedItemColor: Colors.green,
              unselectedItemColor: Colors.grey,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              backgroundColor: Colors.transparent,
              elevation: 0,
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home), title: Text("data")),
                BottomNavigationBarItem(
                    icon: Icon(Icons.search), title: Text("data")),
                BottomNavigationBarItem(
                    icon: Icon(Icons.shopping_basket), title: Text("data")),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), title: Text("data")),
              ]),
        ),
        body: ListView(children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Text("Categories", style: TextStyle(fontSize: 30)),
              ),
              Spacer(),
              IconButton(
                onPressed: null,
                icon: Icon(Icons.search),
              ),
            ],
          ),
          Container(
            height: 290,
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: ListItems(),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text("JUST FOR  YOU",
                    style: TextStyle(fontSize: 17, color: Colors.grey)),
                Spacer(),
                Text("VIEW ALL",
                    style: TextStyle(color: Colors.blue, fontSize: 17))
              ],
            ),
          ),
          Container(
            height: 400,
              padding: EdgeInsets.symmetric(vertical: 10),
              child: ListLong())
        ]),
      ),
    );
  }
}
