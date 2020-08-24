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
        "name": "Producst1",
        "image": "images/shoe44.png",
        "price": 324,
      },
      {
        "name": "Product1",
        "image": "images/shoe44.png",
        "price": 324,
      },
      {
        "price": 324,
        "name": "Product1",
        "image": "images/shoe1.png",
      },
      {
        "price": 324,
        "name": "Product1",
        "image": "images/shoe1.png",
      },
      {
        "price": 324,
        "name": "Product1",
        "image": "images/shoe1.png",
      },
      {
        "price": 324,
        "name": "Product1",
        "image": "images/shoe1.png",
      },
    ];
    return ListView.builder(
      itemCount: items.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, index) {
        return Container(
          margin: EdgeInsets.all(10),
          width: 200,
          child: Stack(
            children: [
              ClipPath(
                clipper: FirstClipper(),
                child: Container(
                  color: color[index % 4],
                  child: Stack(
                    children: [
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
                angle: 18,
                child: Container(
                    margin: EdgeInsets.symmetric(vertical: 20),
                    width: 200,
                    child: Image.asset(items[index]["image"])),
              ),
            ],
          ),
        );
      },
    );
  }
}

class FirstClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.moveTo(0, 20);
    path.lineTo(0, size.height - 50);
    //0,size.height-50       50,size.height
    path.quadraticBezierTo(0, size.height, 50, size.height);
    path.lineTo(size.width - 50, size.height);
    path.quadraticBezierTo(
        size.width, size.height, size.width, size.height - 50);
    path.lineTo(size.width, size.height * 0.5 + 50);
    path.quadraticBezierTo(size.width, size.height * 0.5,
        size.width - (50 * 1.5), (size.height * 0.5) - (50));
    // path.lineTo(50, size.height*0.3+25);
    // path.quadraticBezierTo(25, size.height*0.3, 0,size.height+25);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
