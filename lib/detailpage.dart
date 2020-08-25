import 'package:ecommerce_shoes/clipper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DetailPage extends StatelessWidget {
  final name;
  final image;
  final price;
  final brandlogo;
  final brandimage;
  final color;

  const DetailPage(
      {this.name,
      this.image,
      this.price,
      this.brandlogo,
      this.brandimage,
      this.color});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          leading: IconButton(
            onPressed: Navigator.of(context).pop,
            icon: Icon(Icons.arrow_back_ios),
          ),
          title: Text("CATEGORIES", style: TextStyle(color: Colors.white))),
      backgroundColor: color,
      body: Stack(
        children: [
          ListView(children: [
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 100),
                  height: 600,
                  width: 400,
                  child: ClipPath(
                    clipper: FirstClipper(factor: 50.00, dhfactor: 200.00),
                    child: Container(
                      padding: EdgeInsets.only(left: 20, top: 200),
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Wrap(children: [
                            Container(
                              width: 240,
                              child: Text(name,
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 35)),
                            ),
                          ]),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 20,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 20,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 20,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 20,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.grey,
                                  size: 20,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 20),
                                  child: Text(
                                    "145 Reviews",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.blue),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 10),
                            child: Text(
                              "DETAILS",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 20),
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.symmetric(vertical: 10),
                              // color:Colors.amber,
                              width: MediaQuery.of(context).size.width * 0.9,
                              child: Wrap(
                                children: [
                                  Text(
                                      "dlkhsufuik sduidshf hgdse rfhek  rhdef rher  weskr klwer  kwekur kuwer hkweku")
                                ],
                              )),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 10),
                            child: Text(
                              "COLOR OPTIONS",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 20),
                            ),
                          ),
                          Row(
                            children: [
                              _buildcolor(Colors.blue),
                              _buildcolor(Colors.amber),
                              _buildcolor(Colors.deepOrange),
                              _buildcolor(Colors.red),
                              _buildcolor(Colors.purple)
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Transform.rotate(
                  angle: 18.40,
                  child: Container(
                    margin: EdgeInsets.only(top:30),
                    height: 200,
                    width: MediaQuery.of(context).size.width-20,
                    child: Image.asset(image),
                  ),
                ),
              ],
            ),
          ]),
          Positioned(
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                boxShadow: [
                  BoxShadow(
                      spreadRadius: 1, blurRadius: 10, color: Colors.black12)
                ],
                color: Colors.white,
              ),
              height: 60,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        "\$$price",
                        style: TextStyle(color: Colors.black, fontSize: 25),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        color: Colors.green,
                      ),
                      height: 60,
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "ADD TO CART",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container _buildcolor(color) {
    return Container(
        margin: EdgeInsets.only(right: 10),
        height: 20,
        width: 20,
        decoration: BoxDecoration(color: color, shape: BoxShape.circle));
  }
}
