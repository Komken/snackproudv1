import 'package:flutter/material.dart';
import 'package:snackproudv1/constants.dart';
import 'Product.dart';
import 'Page2.dart';
import 'package:flutter/widgets.dart';
import 'Server.dart';
import 'package:flutter/gestures.dart';
import 'stripe_checkout.dart';

var SelectedName = "Nothing";
var SelectedImg = ("assets/images/" + SelectedItem + ".png");
var SelectedItem = ("Nothing");
var SelectedImgDis = "Nothing";

var carts = "\$0.0";

double cart = 0;

final List<Product> products = <Product>[
  new Product(
      'price_1Ha0N4GEyFEWKkD6ZThJu5td',
      'Snack Proud, Protein Bar – Choc Berry Fudge ,40g',
      2,
      '1.png',
      0,
      '1B.png'),
  new Product('price_1HaKq6GEyFEWKkD65pACMH8h',
      'Snack Proud, Get Seedy Wholefood Bar', 2, '2.png', 0, '2B.png'),
  new Product('price_1HeaVDGEyFEWKkD61ddGPOEj',
      'Chocolate Not Chocolate, Choc Truffles, 30g', 4, '3.png', 0, '3B.png'),
  new Product('price_1Ha0N4GEyFEWKkD6ZThJu5td',
      'Botanika Bars, Lemon Cheese Cake, 40g', 4, '4.png', 0, '4B.png'),
  new Product('price_1Ha0N4GEyFEWKkD6ZThJu5td', 'Lemon Cheese Cake, 40g', 4,
      '5.png', 0, '5B.png'),
];

MediaQueryData queryData;

class home extends StatefulWidget {
  const home({Key key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    queryData = MediaQuery.of(context);
    double screenWidth = queryData.size.width;
    double screenHeight = queryData.size.height;
    double blockSizeWidth = screenWidth / 100;
    double blockSizeHeight = screenHeight / 100;

    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Stack(
        children: <Widget>[
          Stack(children: [
            ListView.separated(
              padding: const EdgeInsets.fromLTRB(10, 100, 0, 100),
              itemCount: products.length,
              itemBuilder: (BuildContext context, int index) {
                return Row(children: [
                  Container(
                      width: blockSizeWidth * 95,
                      decoration: new BoxDecoration(
                        color: Colors.white,
                        borderRadius: new BorderRadius.circular(10),
                      ),
                      child: Row(children: [
                        GestureDetector(
                          onTap: () {
                            SelectedName = products[index].label;

                            SelectedImg =
                                ('assets/images/${products[index].icon}');
                            SelectedImgDis =
                                ('assets/images/${products[index].description}');
                            print(SelectedName);
                            print(SelectedImgDis);

                            Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => Page2(
                                      Item: SelectedName,
                                      Imag: SelectedImg,
                                      Dis: SelectedImgDis)),
                            );
                          }, // handle your image tap here
                          child: Image.asset(
                            'assets/images/${products[index].icon}',
                            fit:
                                BoxFit.cover, // this is the solution for border
                            width: 120.0,
                            height: 120.0,
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              height: 50,
                              width: 200,
                              child: Text(' ${products[index].label}'),
                            ),
                            Container(
                              height: 20,
                              width: 200,
                              child: Text('\$ ${products[index].price}'),
                            )
                          ],
                        ),
                        DropdownButton(
                            value: products[index].quantity,
                            items: [
                              DropdownMenuItem(child: Text("0"), value: 0),
                              DropdownMenuItem(child: Text("1"), value: 1),
                              DropdownMenuItem(child: Text("2"), value: 2),
                              DropdownMenuItem(child: Text("3"), value: 3),
                              DropdownMenuItem(child: Text("4"), value: 4),
                              DropdownMenuItem(child: Text("5"), value: 5),
                              DropdownMenuItem(child: Text("6"), value: 6),
                              DropdownMenuItem(child: Text("7"), value: 7),
                              DropdownMenuItem(child: Text("8"), value: 8),
                              DropdownMenuItem(child: Text("9"), value: 9),
                              DropdownMenuItem(child: Text("10"), value: 10)
                            ],
                            onChanged: (value) {
                              setState(() {
                                products[index].quantity = value;

                                cart = 0;
                                for (Product product in products) {
                                  cart = (cart +
                                      (product.price * product.quantity));
                                  carts = ('\$' + cart.toString());
                                }
                              });
                            }),
                      ]))
                ]);
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(),
            ),
          ]),
          Column(
            children: [
              Container(
                //height: screenHeight * 0.2,
                child: Stack(
                  children: [
                    Transform.translate(
                      offset: Offset(blockSizeWidth * 0, blockSizeHeight * 0),
                      child: Container(
                        decoration: new BoxDecoration(
                          color: Colors.white,
                        ),
                        width: blockSizeWidth * 99,
                        height: blockSizeHeight * 12.5,
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(blockSizeWidth * 2, blockSizeHeight * 4),
                      //Logo
                      child: Container(
                        width: blockSizeWidth * 17,
                        height: blockSizeHeight * 6,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/logo.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    //Top Container

                    Center(
                      child: Container(
                        color: Color(0xFFFFFF),
                        child: Text(
                          'Snacking at Westpac Level 24',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                        padding: const EdgeInsets.fromLTRB(150, 40, 0, 0),
                      ),
                    ),
// yellow bar
                    Transform.translate(
                      offset:
                          Offset(blockSizeWidth * 0.5, blockSizeHeight * 11),
                      child: Container(
                        decoration: new BoxDecoration(
                          color: Colors.yellow,
                        ),
                        width: blockSizeWidth * 99,
                        height: blockSizeHeight * 2.5,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Transform.translate(
            offset: Offset(blockSizeWidth * 0, blockSizeHeight * 93),
            child: Container(
              decoration: new BoxDecoration(
                color: Colors.grey[300],
              ),
              width: blockSizeWidth * 99,
              height: blockSizeHeight * 12.5,
            ),
          ),
          Transform.translate(
            offset: Offset(blockSizeWidth * 5, blockSizeHeight * 89),
            child: Container(
              decoration: new BoxDecoration(
                color: Colors.blue,
                borderRadius: new BorderRadius.circular(10),
              ),
              width: blockSizeWidth * 90,
              height: blockSizeHeight * 10,
            ),
          ),
          Transform.translate(
            offset: Offset(blockSizeWidth * 12.5, blockSizeHeight * 92.5),
            child: Container(
                child: Text(
              '${carts}',
              style: TextStyle(fontSize: 18, color: Colors.white),
            )),
          ),
          Transform.translate(
            offset: Offset(blockSizeWidth * 67, blockSizeHeight * 90.75),
            child: Container(
              child: FlatButton(
                onPressed: () => redirectToCheckout(context, products),
                child: Text(
                  'Pay Now',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
