import 'package:flutter/material.dart';
import './XDBackGround.dart';
import './XDiPhoneXXS11Pro2.dart';
import 'package:adobe_xd/page_link.dart';
import './XDiPhoneXXS11Pro3.dart';
import 'package:flutter/widgets.dart';

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
            child:
                // Adobe XD layer: '2' (shape)
                PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => XDiPhoneXXS11Pro2(),
                ),
              ],
              child: Container(
                width: 125,
                height: 125,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: const AssetImage('assets/images/1.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
          //item 2
          Transform.translate(
            offset: Offset(blockSizeWidth * 5, blockSizeHeight * 30),
            child:
                // Adobe XD layer: '3' (shape)
                PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => XDiPhoneXXS11Pro2(),
                ),
              ],
              child: Container(
                width: 125.0,
                height: 125.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: const AssetImage('assets/images/5.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
          //item 3
          Transform.translate(
            offset: Offset(blockSizeWidth * 5, blockSizeHeight * 45),
            child:
                // Adobe XD layer: '4' (shape)
                PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => XDiPhoneXXS11Pro2(),
                ),
              ],
              child: Container(
                width: 125.0,
                height: 125.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: const AssetImage('assets/images/4.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
          //item 4
          Transform.translate(
            offset: Offset(blockSizeWidth * 5, blockSizeHeight * 60),
            child:
                // Adobe XD layer: '5' (shape)
                PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => XDiPhoneXXS11Pro2(),
                ),
              ],
              child: Container(
                width: 125.0,
                height: 125.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: const AssetImage('assets/images/3.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
          //item 5
          Transform.translate(
            offset: Offset(blockSizeWidth * 5, blockSizeHeight * 75),
            child:
                // Adobe XD layer: 'FBotanika-Protein-B…' (shape)
                PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => XDiPhoneXXS11Pro2(),
                ),
              ],
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
          //pricing for item 2
          Transform.translate(
            offset: Offset(blockSizeWidth * 35, blockSizeHeight * 35),
            child: Text(
              'Placeholder item 2 \n\$3.99',
              style: TextStyle(
                fontFamily: 'Helvetica Neue',
                fontSize: 15,
                color: const Color(0xff707070),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          //pricing for item 3
          Transform.translate(
            offset: Offset(blockSizeWidth * 35, blockSizeHeight * 50),
            child: Text(
              'Placeholder item 3 \n\$5.95',
              style: TextStyle(
                fontFamily: 'Helvetica Neue',
                fontSize: 15,
                color: const Color(0xff707070),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          //priicng for item 4
          Transform.translate(
            offset: Offset(blockSizeWidth * 35, blockSizeHeight * 65),
            child: Text(
              'Placeholder item 4 \n\$2.95',
              style: TextStyle(
                fontFamily: 'Helvetica Neue',
                fontSize: 15,
                color: const Color(0xff707070),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(blockSizeWidth * 35, blockSizeHeight * 80),
            child: Text(
              'Placeholder item 5 \n\$3.50',
              style: TextStyle(
                fontFamily: 'Helvetica Neue',
                fontSize: 15,
                color: const Color(0xff707070),
              ),
              textAlign: TextAlign.left,
            ),
          ),

          //buy for item 1, revised with text inside box rather than text AND box
          Transform.translate(
            offset: Offset(blockSizeWidth * 75, blockSizeHeight * 20),
            child: Container(
              width: 74.0,
              height: 32.0,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
              child: Center(
                child: Text(
                  'BUY',
                  style: TextStyle(
                    fontFamily: 'Helvetica Neue',
                    fontSize: 18,
                    color: const Color(0xff707070),
                    height: 1,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(blockSizeWidth * 75, blockSizeHeight * 20),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => XDiPhoneXXS11Pro3(),
                ),
              ],
            ),
          ),
          //buy for item 2
          Transform.translate(
            offset: Offset(blockSizeWidth * 75, blockSizeHeight * 35),
            child: Container(
              width: 74.0,
              height: 32.0,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
              child: Center(
                child: Text(
                  'BUY',
                  style: TextStyle(
                    fontFamily: 'Helvetica Neue',
                    fontSize: 18,
                    color: const Color(0xff707070),
                    height: 1,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(blockSizeWidth * 75, blockSizeHeight * 35),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => XDiPhoneXXS11Pro3(),
                ),
              ],
            ),
          ),

          //buy for item 3
          Transform.translate(
            offset: Offset(blockSizeWidth * 75, blockSizeHeight * 50),
            child: Container(
              width: 74.0,
              height: 32.0,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
              child: Center(
                child: Text(
                  'BUY',
                  style: TextStyle(
                    fontFamily: 'Helvetica Neue',
                    fontSize: 18,
                    color: const Color(0xff707070),
                    height: 1,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(272.0, 430.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => XDiPhoneXXS11Pro3(),
                ),
              ],
            ),
          ),
          //buy for item 4
          Transform.translate(
            offset: Offset(blockSizeWidth * 75, blockSizeHeight * 65),
            child: Container(
              width: 74.0,
              height: 32.0,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
              child: Center(
                child: Text(
                  'BUY',
                  style: TextStyle(
                    fontFamily: 'Helvetica Neue',
                    fontSize: 18,
                    color: const Color(0xff707070),
                    height: 1,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(272.0, 503.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => XDiPhoneXXS11Pro3(),
                ),
              ],
            ),
          ),
          //buy for item 5
          Transform.translate(
            offset: Offset(blockSizeWidth * 75, blockSizeHeight * 80),
            child: Container(
              width: 74.0,
              height: 32.0,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
              child: Center(
                child: Text(
                  'BUY',
                  style: TextStyle(
                    fontFamily: 'Helvetica Neue',
                    fontSize: 18,
                    color: const Color(0xff707070),
                    height: 1,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(273.0, 599.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => XDiPhoneXXS11Pro3(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
