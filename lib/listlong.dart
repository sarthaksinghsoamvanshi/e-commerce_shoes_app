import 'package:flutter/material.dart';

class ListLong extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var color = [
      Colors.blue,
      Colors.deepOrange,
      Colors.orange,
      Colors.amber,
      Colors.pink,
    ];
    var items = [
      {
        "name": "Producst111",
        "image": "images/shoe44.png",
        "price": 324,
        "brandlogo": "images/nike.png",
        "brandname": "nike"
      },
      {
        "name": "Product1",
        "image": "images/shoe44.png",
        "price": 324,
        "brandlogo": "images/nike.png",
        "brandname": "nike"
      },
      {
        "name": "Producst111",
        "image": "images/shoe44.png",
        "price": 324,
        "brandlogo": "images/nike.png",
        "brandname": "nike"
      },
      {
        "name": "Product1",
        "image": "images/shoe44.png",
        "price": 324,
        "brandlogo": "images/nike.png",
        "brandname": "nike"
      },
    ];
    return ListView.builder(
      itemCount: items.length,
      scrollDirection: Axis.vertical,
      itemBuilder: (BuildContext context, index) {
        return Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              color: color[index],
              boxShadow: [
                BoxShadow(
                    blurRadius: 5, offset: Offset(5, 5), color: Colors.grey)
              ]),
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          width: double.infinity,
          height: 100,
          child: Row(
            children: [
              Container(
                child: Image.asset(
                  items[index]["image"],
                ),
                height: 100,
                width: 140,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Wrap(
                    children: [
                      Container(
                        width: 130,
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(items[index]["name"],
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white))),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(left:10),
                      child: Text(
                    items[index]["brandname"],
                    style: TextStyle(color: Colors.white70),
                  ))
                ],
              ),
              Container(
                  child: Text("\$${items[index]["price"]}",
                      style: TextStyle(fontSize: 19, color: Colors.white)))
            ],
          ),
        );
      },
    );
  }
}
