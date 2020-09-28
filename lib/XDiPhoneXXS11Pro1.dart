import 'dart:js';

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
    var screenWidth = queryData.size.width;
    var screenHeight = queryData.size.height;

    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          //Background
          Transform.translate(
            offset: Offset(screenWidth / 20, screenHeight / 5),
            child:
                // Adobe XD layer: 'BackGround' (component)
                SizedBox(
              width: screenWidth / 1.11,
              height: screenHeight / 1.25,
              child: XDBackGround(),
            ),
          ),
          //Logo
          Transform.translate(
            offset: Offset(screenWidth / 2.5, screenHeight / 20),
            child:
                // Adobe XD layer: 'snack_proud_snack_p…' (shape)
                Container(
              width: screenWidth / 10,
              height: screenHeight / 10,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('images/logo.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(29.0, 209.0),
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
          Transform.translate(
            offset: Offset(29.0, 555.0),
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
          Transform.translate(
            offset: Offset(29.0, 471.0),
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
          Transform.translate(
            offset: Offset(29.0, 382.0),
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
          Transform.translate(
            offset: Offset(29.0, 307.0),
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
          Transform.translate(
            offset: Offset(170.0, 248.0),
            child: Text(
              'Item 1 \n\$xx.xx',
              style: TextStyle(
                fontFamily: 'Helvetica Neue',
                fontSize: 20,
                color: const Color(0xff707070),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(167.0, 346.0),
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
          Transform.translate(
            offset: Offset(167.0, 421.0),
            child: Text(
              'Item 3 \n\$xx.xx',
              style: TextStyle(
                fontFamily: 'Helvetica Neue',
                fontSize: 20,
                color: const Color(0xff707070),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(167.0, 496.0),
            child: Text(
              'Item 4 \n\$xx.xx',
              style: TextStyle(
                fontFamily: 'Helvetica Neue',
                fontSize: 20,
                color: const Color(0xff707070),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(167.0, 594.0),
            child: Text(
              'Item 5 \n\$xx.xx',
              style: TextStyle(
                fontFamily: 'Helvetica Neue',
                fontSize: 20,
                color: const Color(0xff707070),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(261.0, 256.0),
            child: Container(
              width: 74.0,
              height: 32.0,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(272.0, 257.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => XDiPhoneXXS11Pro3(),
                ),
              ],
              child: Text(
                'BUY',
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
          Transform.translate(
            offset: Offset(261.0, 352.0),
            child: Container(
              width: 74.0,
              height: 32.0,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(272.0, 353.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => XDiPhoneXXS11Pro3(),
                ),
              ],
              child: Text(
                'BUY',
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
          Transform.translate(
            offset: Offset(261.0, 429.0),
            child: Container(
              width: 74.0,
              height: 32.0,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
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
              child: Text(
                'BUY',
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
          Transform.translate(
            offset: Offset(261.0, 502.0),
            child: Container(
              width: 74.0,
              height: 32.0,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
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
              child: Text(
                'BUY',
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
          Transform.translate(
            offset: Offset(262.0, 598.0),
            child: Container(
              width: 74.0,
              height: 32.0,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
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
              child: Text(
                'BUY',
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
          Transform.translate(
            offset: Offset(29.0, 555.0),
            child:
                // Adobe XD layer: '3' (shape)
                Container(
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
          Transform.translate(
            offset: Offset(167.0, 594.0),
            child: Text(
              'Item 5 \n\$xx.xx',
              style: TextStyle(
                fontFamily: 'Helvetica Neue',
                fontSize: 20,
                color: const Color(0xff707070),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(273.0, 599.0),
            child: Text(
              'BUY',
              style: TextStyle(
                fontFamily: 'Helvetica Neue',
                fontSize: 26,
                color: const Color(0xff707070),
                height: 0.7307692307692307,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}
