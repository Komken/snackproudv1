import 'package:flutter/material.dart';
import 'package:snackproudv1/CheckoutPage.dart';
import './XDBackGround.dart';
import './XDiPhoneXXS11Pro1.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'Home.dart';
import 'Server.dart';

class XDiPhoneXXS11Pro3 extends StatelessWidget {
  var Item = "No Item Selected";
  var Imag = "No Item Selected";
  int Item1Q = 0;
  int Item2Q = 0;

  XDiPhoneXXS11Pro3({
    this.Item,
    this.Imag,
    this.Item1Q,
    this.Item2Q,
  });
  @override
  Widget build(BuildContext context) {
    /*queryData = MediaQuery.of(context);
    double screenWidth = queryData.size.width;
    double screenHeight = queryData.size.height;
    double blockSizeWidth = screenWidth / 100;
    double blockSizeHeight = screenHeight / 100;
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
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
          Transform.translate(
            offset: Offset(blockSizeWidth * 41, blockSizeHeight * 2.5),
            child:
                // Adobe XD layer: 'snack_proud_snack_p…' (shape)
                PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => XDiPhoneXXS11Pro1(),
                ),
              ],
              child: Container(
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
          ),
          Transform.translate(
            offset: Offset(0.0, 290.0),
            child:
                // Adobe XD layer: '2' (shape)
                Container(
              width: blockSizeWidth * 33.33,
              height: blockSizeHeight * 33.33,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(Imag),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(192.0, 346.0),
            child: Text(
              Item,
              style: TextStyle(
                fontFamily: 'Helvetica Neue',
                fontSize: 35,
                color: const Color(0xff707070),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(124.0, 657.0),
            child: Container(
              width: 127.0,
              height: 32.0,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Builder(
            builder: (context) => Center(
              child: RaisedButton(
                onPressed: () async {
                  final sessionId = await Server().createCheckout(products);
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
          ),
          Transform.translate(
            offset: Offset(154.0, 236.0),
            child: Text(
              'Cart',
              style: TextStyle(
                fontFamily: 'Helvetica Neue',
                fontSize: 35,
                color: const Color(0xff707070),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          /*  Transform.translate(
            offset: Offset(62.5, 526.5),
            child: SvgPicture.string(
              _svg_wf435h,
              allowDrawingOutsideViewBox: true,
            ),
          ), */
          Transform.translate(
            offset: Offset(119.0, 572.0),
            child: Text(
              'Total: \$xx.xx',
              style: TextStyle(
                fontFamily: 'Helvetica Neue',
                fontSize: 35,
                color: const Color(0xff707070),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(41.0, 218.0),
            child: Container(
              width: 82.0,
              height: 32.0,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(52.0, 219.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => XDiPhoneXXS11Pro1(),
                ),
              ],
              child: Text(
                'Back',
                style: TextStyle(
                  fontFamily: 'Helvetica Neue',
                  fontSize: 26,
                  color: const Color(0xff707070),
                  height: 0.7307692307692307,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
        ],
      ),
    );*/
  }
}

/*const String _svg_wf435h =
    '<svg viewBox="62.5 526.5 251.0 1.0" ><path transform="translate(62.5, 526.5)" d="M 0 1 L 251 0" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
*/
