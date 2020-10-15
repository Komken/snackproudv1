import 'package:flutter/material.dart';
import './XDBackGround.dart';
import './XDiPhoneXXS11Pro2.dart';
import 'package:adobe_xd/page_link.dart';
import './XDiPhoneXXS11Pro3.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_counter/flutter_counter.dart';
import 'package:snackproudv1/CheckoutPage.dart';

import 'Server.dart';

var SelectedName = "Nothing";
var SelectedImg = ("assets/images/" + SelectedItem + ".png");
var SelectedItem = ("Nothing");
num Item1Q = 0;
String Item1QV = Item1Q.toString();
int Item2Q = 0;
int Item3Q = 0;
int Item4Q = 0;
int Item5Q = 0;
int Item6Q = 0;
int Item7Q = 0;
int Item8Q = 0;
int Item9Q = 0;
int Item10Q = 0;
int _value1 = 0;
int _value2 = 0;

MediaQueryData queryData;

class XDiPhoneXXS11Pro1 extends StatelessWidget {
  XDiPhoneXXS11Pro1({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    queryData = MediaQuery.of(context);
    double screenWidth = queryData.size.width;
    double screenHeight = queryData.size.height;
    double blockSizeWidth = screenWidth / 100;
    double blockSizeHeight = screenHeight / 100;

    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          //Background
          Transform.translate(
            offset: Offset(blockSizeWidth * 5, blockSizeHeight * 15),
            child:
                // Adobe XD layer: 'BackGround' (component)
                SizedBox(
              width: blockSizeWidth * 90,
              height: blockSizeHeight * 90,
              child: XDBackGround(),
            ),
          ),
          //Logo
          Transform.translate(
            offset: Offset(blockSizeWidth * 41, blockSizeHeight * 2.7),
            child:
                // Adobe XD layer: 'snack_proud_snack_p…' (shape)
                Container(
              width: blockSizeWidth * 18,
              height: blockSizeHeight * 10,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/logo.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          //Offset 5, +15
          //item Image
          Transform.translate(
            offset: Offset(blockSizeWidth * 5, blockSizeHeight * 15),
            child: FlatButton(
              color: Colors.transparent,
              onPressed: () {
                SelectedName = "Item 1";
                SelectedItem = "1";
                SelectedImg = ("assets/images/" + SelectedItem + ".png");

                print(SelectedName);
                print(SelectedImg);

                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => XDiPhoneXXS11Pro2(
                          Item: SelectedName, Imag: SelectedImg)),
                );
              },
              child: Container(
                width: 125.0,
                height: 125.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: const AssetImage('assets/images/1.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
          //Details for item 1
          Transform.translate(
            offset: Offset(blockSizeWidth * 35, blockSizeHeight * 19.5),
            child: Text(
              'Placeholder item 1 \n\$4.50',
              style: TextStyle(
                fontFamily: 'Helvetica Neue',
                fontSize: 15,
                color: const Color(0xff707070),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          //DropDown button
          Transform.translate(
              offset: Offset(blockSizeWidth * 75, blockSizeHeight * 20.5),
              child: DropdownButton(
                  value: _value1,
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
                    _value1 = value;
                    Item1Q = value;
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => XDiPhoneXXS11Pro1()),
                    );
                  })),

          Transform.translate(
            offset: Offset(blockSizeWidth * 5, blockSizeHeight * 30),
            child: FlatButton(
              color: Colors.transparent,
              onPressed: () {
                SelectedName = "Item 2";
                SelectedItem = "2";
                SelectedImg = ("assets/images/" + SelectedItem + ".png");

                print(SelectedName);
                print(SelectedImg);

                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => XDiPhoneXXS11Pro2(
                          Item: SelectedName, Imag: SelectedImg)),
                );
              },
              child: Container(
                width: 125.0,
                height: 125.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: const AssetImage('assets/images/2.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
          //Details for item 2
          Transform.translate(
            offset: Offset(blockSizeWidth * 35, blockSizeHeight * 35),
            child: Text(
              'Placeholder item 2 \n\$4.50',
              style: TextStyle(
                fontFamily: 'Helvetica Neue',
                fontSize: 15,
                color: const Color(0xff707070),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          //DropDown button
          Transform.translate(
              offset: Offset(blockSizeWidth * 75, blockSizeHeight * 35.5),
              child: DropdownButton(
                  value: _value2,
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
                    _value2 = value;
                    Item2Q = value;
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => XDiPhoneXXS11Pro1()),
                    );
                  })),
          //Buy Button
          Transform.translate(
            offset: Offset(blockSizeWidth * 70, blockSizeHeight * 85),
            child: RaisedButton(
              onPressed: () async {
                if (Item1Q > 0 || Item2Q > 0) {
                  final sessionId = await Server().createCheckout();

                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => CheckoutPage(
                        sessionId: sessionId,
                      ),
                    ),
                  );
                }
                /* Scaffold.of(context).showSnackBar(
                    SnackBar(
                      content: Text('sessionID: $sessionId'),
                    ), 
                  ); */
              },
              child: Text('Pay'),
            ),
          ),
        ],
      ),
    );
  }
}
