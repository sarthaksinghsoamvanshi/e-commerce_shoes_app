import 'package:flutter/material.dart';

class ListItems extends StatelessWidget {
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
    return GestureDetector(
          child: ListView.builder(
        itemCount: items.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, index) {
          return Container(
            margin: EdgeInsets.all(10),
            width: 215,
            child: Stack(
              children: [
                ClipPath(
                  clipper: FirstClipper(),
                  child: Container(
                    color: color[index % 4],
                    child: Stack(
                      children: [
                        Positioned(
                          left: 10,
                          top: 25,
                          child: Container(
                            height: 50,
                            width: 50,
                            child: Image.asset(items[index]["brandlogo"]),
                          ),
                        ),
                        Positioned(
                            right: 0,
                            bottom: 0,
                            child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                  ),
                                ),
                                child: IconButton(
                                  icon: Icon(Icons.add),
                                  onPressed: null,
                                ))),
                        Positioned(
                          bottom: 40,
                          left: 20,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 150,
                                child: Text(
                                  items[index]["name"],
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                child: Text(
                                  "\$ ${items[index]["price"]}",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Transform.rotate(
                  angle: 18.40,
                  child: Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      width: 200,
                      child: Image.asset(items[index]["image"])),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class FirstClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.moveTo(0, 25 * 1.5);
    path.lineTo(0, size.height - 25);
    path.quadraticBezierTo(0, size.height, 25, size.height);
    path.lineTo(size.width - 25, size.height);
    path.quadraticBezierTo(
        size.width, size.height, size.width, size.height - 25);
    path.lineTo(size.width, size.height * 0.4 + 25);
    path.quadraticBezierTo(size.width, size.height * 0.4,
        size.width - (25 * 1.5), (size.height * 0.43) - (25));
    path.lineTo(50, 25);
    path.quadraticBezierTo(0, 0, 0, 25 * 1.5);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
