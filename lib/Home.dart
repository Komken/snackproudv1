import 'package:flutter/material.dart';
import 'XDBackGround.dart';
import 'XDiPhoneXXS11Pro2.dart';
import 'package:adobe_xd/page_link.dart';
import 'XDiPhoneXXS11Pro3.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:snackproudv1/CheckoutPage.dart';
import './XDBackGround.dart';
import './XDiPhoneXXS11Pro1.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'Server.dart';
import 'values.dart';
import 'package:flutter/gestures.dart';
import 'package:url_launcher/url_launcher.dart';

var SelectedName = "Nothing";
var SelectedImg = ("assets/images/" + SelectedItem + ".png");
var SelectedItem = ("Nothing");

int Item1Q = 1; //Changed to Simulate Multiple Items
int Item2Q = 4; //Changed to Simulate Multiple Items
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

final List<String> entries = <String>[
  'Snack Proud, Protein Bar – Choc Berry Fudge ,40g',
  'Snack Proud, Get Seedy Wholefood Bar',
  'Chocolate Not Chocolate, Choc Truffles, 30g',
  'Botanika Bars, Lemon Cheese Cake, 40g'
];

final List<String> itemID = <String>['1', '2', '3', '4', '5', '6', '7'];

MediaQueryData queryData;

class home extends StatelessWidget {
  home({
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
      backgroundColor: Colors.grey[300],
      body: Stack(
        children: <Widget>[
          //Background

          //Logo
          Transform.translate(
            offset: Offset(blockSizeWidth * 2, blockSizeHeight * 4),
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
              alignment: Alignment(1.0, -0.9),
            ),
          ),

          Transform.translate(
            offset: Offset(blockSizeWidth * 0.5, blockSizeHeight * 11),
            child: Container(
              decoration: new BoxDecoration(
                color: Colors.yellow,
              ),
              width: blockSizeWidth * 99,
              height: blockSizeHeight * 2.5,
            ),
          ),

          ListView.separated(
            padding: const EdgeInsets.fromLTRB(10, 100, 0, 0),
            itemCount: entries.length,
            itemBuilder: (BuildContext context, int index) {
              return Row(children: [
                Container(
                    width: blockSizeWidth * 95,
                    decoration: new BoxDecoration(
                      color: Colors.white,
                      borderRadius: new BorderRadius.circular(10),
                    ),
                    child: Row(children: [
                      Container(
                        height: 120.0,
                        width: 120.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/images/${itemID[index]}.png'),
                            fit: BoxFit.fill,
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 200,
                        child: Text(' ${entries[index]}'),
                      ),
                    ]))
              ]);
            },
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(),
          ),

          Transform.translate(
            offset: Offset(blockSizeWidth * 5, blockSizeHeight * 85),
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
            offset: Offset(blockSizeWidth * 12.5, blockSizeHeight * 88.5),
            child: Container(
                child: Text(
              '\$xx.xx',
              style: TextStyle(fontSize: 18, color: Colors.white),
            )),
          ),
          Transform.translate(
            offset: Offset(blockSizeWidth * 67, blockSizeHeight * 86.75),
            child: Container(
              child: FlatButton(
                onPressed: () async {
                  // if (Item1Q > 0 || Item2Q > 0) {
                  final sessionId = await Server().createCheckout();

                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => CheckoutPage(
                        sessionId: sessionId,
                      ),
                    ),
                  );
                  //    }
                  /* Scaffold.of(context).showSnackBar(
                    SnackBar(
                      content: Text('sessionID: $sessionId'),
                    ), 
                  ); */
                },
                child: Text(
                  'Pay Now',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),

            //Buy Buttn
            /*    Builder(
            builder: (context) => Center(
              child: RaisedButton(
                onPressed: () async {
                  final sessionId = await Server().createCheckout();
                  await Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => CheckoutPage(
                        sessionId: sessionId,
                      ),
                    ),
                  ); 
                  /* Scaffold.of(context).showSnackBar(
                    SnackBar(
                      content: Text('sessionID: $sessionId'),
                    ), 
                  ); */
                },
                child: Text('Pay'),
              ),
            ), 
          ), */
          )
        ],
      ),
    );
  }
}
