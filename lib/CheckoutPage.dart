import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:snackproudv1/ErrorPage.dart';
import 'package:snackproudv1/Success.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'Product.dart';
import 'Server.dart';
import 'constants.dart';
import 'Home.dart';

void redirectToCheckout(BuildContext context, List<Product> products) async {
  for (Product product in products) {
    if (product.quantity > 0) {
      final sessionId = await Server().createCheckout(products);

      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => CheckoutPage(
            sessionId: sessionId,
          ),
        ),
      );
    }
  }
}

class CheckoutPage extends StatefulWidget {
  final String sessionId;

  const CheckoutPage({Key key, this.sessionId}) : super(key: key);

  @override
  _CheckoutPageState createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  WebViewController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: WebView(
          initialUrl: initialUrl,
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (controller) => _controller = controller,
          onPageFinished: (String url) {
            //<---- add this
            if (url == initialUrl) {
              _redirectToStripe();
            }
          },
          navigationDelegate: (NavigationRequest request) {
            if (request.url.startsWith('http://localhost:8080/#/success')) {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => Success(),
                ),
              );
            } else if (request.url
                .startsWith('http://localhost:8080/#/cancel')) {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => ErrorPage(),
                ),
              );
            }
            return NavigationDecision.navigate;
          }),
    );
  }

  String get initialUrl =>
      'data:text/html;base64,${base64Encode(Utf8Encoder().convert(kStripeHtmlPage))}';

  void _redirectToStripe() {
    final redirectToCheckoutJs = '''
    var stripe = Stripe(\'$apiKey\');
    
    stripe.redirectToCheckout({
    sessionId: '${widget.sessionId}'
    }).then(function (result) {
    result.error.message = 'Error'
    });
    ''';
    _controller.evaluateJavascript(redirectToCheckoutJs);
  }
}

const kStripeHtmlPage = '''
<!DOCTYPE html>
<html>
<script src="https://js.stripe.com/v3/"></script>
<head><title>Stripe checkout</title></head>
<body>

</body>
</html>
''';
