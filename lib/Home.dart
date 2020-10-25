import 'package:flutter/material.dart';
import 'package:snackproudv1/constants.dart';
import 'Product.dart';
import 'Page2.dart';
import 'package:flutter/widgets.dart';
import 'Server.dart';
import 'package:flutter/gestures.dart';
import 'stripe_checkout.dart';

var SelectedName = "Nothing";
var SelectedImg = ("Nothing");
var SelectedBrand = ("Nothing");
var SelectedLabel = ("Nothing");
var SelectedFlavour = ("Nothing");
var SelectedImgDis = "Nothing";

var carts = "\$0.0";

double cart = 0;

final List<Product> products = <Product>[
  new Product(
      'price_1Hfc82GoCUNUUbkPK7tpUkWe',
      'Dipped and Dusted Nuts',
      'Chocolate Raspberry',
      '',
      2.85,
      'sp_toisolate-9.png',
      0,
      'sp_toisolate-9description.png'),
  new Product(
      'price_1Hfc8KGoCUNUUbkPYjXvFPED',
      'AmazeBalls',
      'Sweet Chilli & Sour Cream',
      '',
      3.95,
      'sp_toisolate-10.png',
      0,
      'sp_toisolate-10description.png'),
  new Product(
      'price_1Hfc8pGoCUNUUbkPC1xDlTf6',
      'Happy Snack Chickpeas',
      'Chocolate Raspberry',
      '',
      1.5,
      'sp_toisolate-13.png',
      0,
      'sp_toisolate-13description.png'),
  new Product(
      'price_1Hfc9DGoCUNUUbkPzJCIJKnZ',
      'Luv Sum',
      'Protein Ball ',
      'Peanut Cacao',
      2.75,
      'sp_toisolate-18.png',
      0,
      'sp_toisolate-18description.png'),
  new Product(
      'price_1Hfc9SGoCUNUUbkPZANZG3JW',
      'DJ&A',
      'Vege Chips',
      'Beetroot',
      3.75,
      'sp_toisolate-20.png',
      0,
      'sp_toisolate-20description.png'),
  new Product(
      'price_1Hfc9gGoCUNUUbkP7AJKBI0v',
      'Piranha Popcorn',
      'Sweet and Salty',
      '',
      1.95,
      'sp_toisolate-22.png',
      0,
      'sp_toisolate-22description.png'),
  new Product(
      'price_1Hfc9tGoCUNUUbkPuDVCO9tR',
      'Snack Proud',
      'Crunchy Edamame',
      '',
      2.25,
      'sp_toisolate-33.png',
      0,
      'sp_toisolate-33description.png'),
  new Product('price_1HfcA7GoCUNUUbkPyphIaVA3', 'Snack Proud', 'Peas n Pop', '',
      2.25, 'sp_toisolate-34.png', 0, 'sp_toisolate-34description.png'),
  new Product(
      'price_1HfcAPGoCUNUUbkPYlhs8vZP',
      'Chocolate Not Chocolate',
      'Choc Mint Truffles',
      '',
      2.5,
      'sp_toisolate-35.png',
      0,
      'sp_toisolate-35description.png'),
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
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              SelectedBrand = products[index].brand;
                              SelectedFlavour = products[index].flavour;
                              SelectedLabel = products[index].label;

                              SelectedImg =
                                  ('assets/images/${products[index].icon}');
                              SelectedImgDis =
                                  ('assets/images/${products[index].description}');

                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => Page2(
                                        Brand: SelectedBrand,
                                        Label: SelectedLabel,
                                        Flavour: SelectedFlavour,
                                        Imag: SelectedImg,
                                        Dis: SelectedImgDis)),
                              );
                            }, // handle your image tap here
                            child: Image.asset(
                              'assets/images/${products[index].icon}',
                              fit: BoxFit
                                  .cover, // this is the solution for border
                              width: 190.0,
                              height: 190.0,
                            ),
                          ),
                          Column(
                            children: [
                              Container(
                                height: 20,
                                width: 200,
                                child: Text(' ${products[index].brand}'),
                              ),
                              Container(
                                height: 20,
                                width: 200,
                                child: Text(' ${products[index].label}'),
                              ),
                              Container(
                                height: 20,
                                width: 200,
                                child: Text(' ${products[index].flavour}'),
                              ),
                              Container(
                                height: 20,
                                width: 200,
                                child: Text('\$ ${products[index].price}'),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 50,
                                    ),
                                    GestureDetector(
                                        onTap: () {
                                          if (products[index].quantity > 0) {
                                            setState(() {
                                              products[index].quantity =
                                                  products[index].quantity - 1;
                                              cart =
                                                  cart - products[index].price;
                                              carts = ('\$' +
                                                  cart.toStringAsFixed(2));
                                            });
                                          }
                                        },
                                        child: Text(
                                          "-",
                                          style: TextStyle(
                                            fontSize: 30,
                                          ),
                                        )),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text('${products[index].quantity}',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    new GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            products[index].quantity =
                                                products[index].quantity + 1;
                                            cart = cart + products[index].price;
                                            carts = ('\$' +
                                                cart.toStringAsFixed(2));
                                          });
                                        },
                                        child: Text("+",
                                            style: TextStyle(
                                              fontSize: 18,
                                            ))),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Column(children: [
                            SizedBox(
                              height: 50,
                            ),
                          ])
                        ],
                      ))
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
                        width: blockSizeWidth * 100,
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
                    Column(
                      children: [
                        SizedBox(
                          height: screenHeight * 0.075,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: screenWidth * 0.5,
                            ),
                            Container(
                              child: Text(
                                'Snacking at SnackProud',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ), //Top Container

// yellow bar
                    Transform.translate(
                      offset:
                          Offset(blockSizeWidth * 0.5, blockSizeHeight * 11),
                      child: Container(
                        decoration: new BoxDecoration(
                          color: Colors.yellow,
                        ),
                        width: blockSizeWidth * 100,
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
