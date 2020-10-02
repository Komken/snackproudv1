import 'package:flutter/material.dart';
import './XDBackGround.dart';
import './XDiPhoneXXS11Pro2.dart';
import 'package:adobe_xd/page_link.dart';
import './XDiPhoneXXS11Pro3.dart';
import 'package:flutter/widgets.dart';

var SelectedName = "Nothing";
var SelectedImg = ("assets/images/" + SelectedItem + ".png");
var SelectedItem = ("Nothing");

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
              height: blockSizeHeight * 80,
              child: XDBackGround(),
            ),
          ),
          //Logo
          Transform.translate(
            offset: Offset(blockSizeWidth * 41, blockSizeHeight * 2.5),
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
          //item one
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
          // OffSet Width *5 Height *+15

          //pricing for item 1
          Transform.translate(
            offset: Offset(blockSizeWidth * 35, blockSizeHeight * 20),
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
          //Buy Button
          Transform.translate(
            offset: Offset(blockSizeWidth * 70, blockSizeHeight * 20),
            child: RaisedButton(
              onPressed: () {
                SelectedName = "Item 1";
                SelectedItem = "1";
                SelectedImg = ("assets/images/" + SelectedItem + ".png");

                print(SelectedName);
                print(SelectedImg);

                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => XDiPhoneXXS11Pro3(
                          Item: SelectedName, Imag: SelectedImg)),
                );
              },
              child: Text('Buy'),
            ),
          ),
          //Item Image Button
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
          //Item Description
          Transform.translate(
            offset: Offset(blockSizeWidth * 40, blockSizeHeight * 35),
            child: Text(
              'Item 2 \n\$xx.xx',
              style: TextStyle(
                fontFamily: 'Helvetica Neue',
                fontSize: 20,
                color: const Color(0xff707070),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          //Buy Button
          Transform.translate(
            offset: Offset(blockSizeWidth * 70, blockSizeHeight * 35),
            child: RaisedButton(
              onPressed: () {
                SelectedName = "Item 2";
                SelectedItem = "2";
                SelectedImg = ("assets/images/" + SelectedItem + ".png");
                print(SelectedName);
                print(SelectedImg);

                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => XDiPhoneXXS11Pro3(
                          Item: SelectedName, Imag: SelectedImg)),
                );
              },
              child: Text('Buy'),
            ),
          ),
        ],
      ),
    );
  }
}
