import 'package:flutter/material.dart';

import 'Product.dart';
import 'stripe_checkout_stub.dart'
    if (dart.library.io) "CheckoutPage.dart"
    if (dart.library.js) "CheckoutWeb.dart" as impl;

void redirectToCheckout(BuildContext context, List<Product> products) =>
    impl.redirectToCheckout(context, products);
