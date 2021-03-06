import 'package:flutter/material.dart';
import 'package:snackproudv1/Home.dart';
import 'Home.dart';

MediaQueryData queryData;

class Page2 extends StatelessWidget {
  var Brand = "No Item Selected";
  var Flavour = "No Item Selected";
  var Label = "No Item Selected";

  var Imag = "No Image Selected";
  var Dis = "No Image Selected";
  Page2({this.Label, this.Imag, this.Dis, this.Brand, this.Flavour});

  @override
  Widget build(BuildContext context) {
    queryData = MediaQuery.of(context);
    double screenWidth = queryData.size.width;
    double screenHeight = queryData.size.height;
    double blockSizeWidth = screenWidth / 100;
    double blockSizeHeight = screenHeight / 100;

    return Scaffold(
        body: Stack(children: <Widget>[
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
                  offset: Offset(blockSizeWidth * 0.5, blockSizeHeight * 11),
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
      Column(
        children: [
          SizedBox(
            height: screenHeight * 0.15,
          ),
          Row(
            children: [
              SizedBox(
                width: screenWidth * 0.175,
              ),
              Column(
                children: [
                  Container(
                    width: blockSizeWidth * 50,
                    height: blockSizeHeight * 33.33,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(Imag),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      Brand,
                      style: TextStyle(
                        fontFamily: 'Helvetica Neue',
                        fontSize: 25,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    child: Text(
                      Label,
                      style: TextStyle(
                        fontFamily: 'Helvetica Neue',
                        fontSize: 25,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    child: Text(
                      Flavour,
                      style: TextStyle(
                        fontFamily: 'Helvetica Neue',
                        fontSize: 25,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    width: blockSizeWidth * 60,
                    height: blockSizeHeight * 35.33,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(Dis),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
      Transform.translate(
        offset: Offset(blockSizeWidth * 5, blockSizeHeight * 15),
        child: Container(
          decoration: new BoxDecoration(
            color: Colors.blue,
            borderRadius: new BorderRadius.circular(10),
          ),
          width: blockSizeWidth * 20,
          height: blockSizeHeight * 5,
        ),
      ),
      Transform.translate(
        offset: Offset(blockSizeWidth * 5, blockSizeHeight * 14),
        child: Container(
          child: FlatButton(
            onPressed: () {
              print(SelectedImg);
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => home(),
                ),
              );
            },
            child: Text(
              'Back',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
        ),
      ),
    ]));
  }
}
