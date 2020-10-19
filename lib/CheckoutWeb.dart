@JS()
library stripe;

import 'package:flutter/material.dart';
import 'package:js/js.dart';
import 'package:snackproudv1/constants.dart';
import 'Server.dart';
import 'package:snackproudv1/constraints.dart';
import 'Home.dart';
import 'Server.dart';

var itemID = 'price_1Ha0N4GEyFEWKkD6ZThJu5td';
const apiKey =
    'pk_test_51HZZIiGEyFEWKkD6E6mEDdpG3ohbqIWKxfUACDGOOzPkYQgf6FdmbE6a7CP59xeXzHMWhPUq0o1J9C2CVrkxb1BZ00CxjsjLsk';

void redirectToCheckout(BuildContext _) async {
  final stripe = Stripe(apiKey);

  Stripe(apiKey).redirectToCheckout(CheckoutOptions(
    lineItems: [
      LineItem(
        price: itemID,
        quantity: 1,
      )
    ],
    mode: 'payment',
    successUrl: 'http://localhost:8080/#/success',
    cancelUrl: 'http://localhost:8080/#/cancel',
  ));
}

@JS()
class Stripe {
  external Stripe(String key);

  external redirectToCheckout(CheckoutOptions options);
}

@JS()
@anonymous
class CheckoutOptions {
  external List<LineItem> get lineItems;

  external String get mode;

  external String get successUrl;

  external String get cancelUrl;

  external String get sessionId;

  external factory CheckoutOptions({
    List<LineItem> lineItems,
    String mode,
    String successUrl,
    String cancelUrl,
    String sessionId,
  });
}

@JS()
@anonymous
class LineItem {
  external String get price;

  external int get quantity;

  external factory LineItem({String price, int quantity});
}
