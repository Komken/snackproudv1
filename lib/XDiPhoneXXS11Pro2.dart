import 'package:flutter/material.dart';
import './XDBackGround.dart';
import './XDiPhoneXXS11Pro1.dart';
import 'package:adobe_xd/page_link.dart';

MediaQueryData queryData;

class XDiPhoneXXS11Pro2 extends StatelessWidget {
  XDiPhoneXXS11Pro2({
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
          //background
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
          //logo
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
          //image
          Transform.translate(
            offset: Offset(blockSizeWidth * 25, blockSizeHeight * 15),
            child:
                // Adobe XD layer: '2' (shape)
                Container(
              width: blockSizeWidth * 50,
              height: blockSizeHeight * 33.33,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/1.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          //name of item
          Transform.translate(
            offset: Offset(blockSizeWidth * 25, blockSizeHeight * 45),
            child: Text(
              'Placeholder item 1 \n\$4.50',
              style: TextStyle(
                fontFamily: 'Helvetica Neue',
                fontSize: 25,
                color: const Color(0xff707070),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          //description of item box
          Transform.translate(
            offset: Offset(blockSizeWidth * 20, blockSizeHeight * 55),
            child: Container(
              width: blockSizeWidth * 60,
              height: blockSizeHeight * 35,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
              child: Text(
                'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur',
                style: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 10,
                  color: const Color(0xff000000),
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          //back button
          Transform.translate(
            offset: Offset(blockSizeWidth * 7, blockSizeHeight * 16),
            child: Container(
              width: blockSizeWidth * 20,
              height: blockSizeHeight * 5,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
              child: PageLink(
                links: [
                  PageLinkInfo(
                    transition: LinkTransition.Fade,
                    ease: Curves.easeOut,
                    duration: 0.3,
                    pageBuilder: () => XDiPhoneXXS11Pro1(),
                  ),
                ],
                child: Center(
                  child: Text(
                    'Back',
                    style: TextStyle(
                      fontFamily: 'Helvetica Neue',
                      fontSize: 26,
                      color: const Color(0xff707070),
                      height: 0.7307692307692307,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
