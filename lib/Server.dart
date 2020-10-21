import 'dart:io';
import 'package:dio/dio.dart';
import 'package:snackproudv1/constants.dart';
import 'Product.dart';
import 'Home.dart';

class Server {
  Future<String> createCheckout(List<Product> products) async {
    var checkout = [];

    for (Product product in products) {
      if (product.quantity > 0) {
        checkout.add({
          'price': product.stripeId,
          'quantity': product.quantity,
        });
      }
    }

    final auth = 'Bearer ' + secretKey;
    final body = {
      'payment_method_types': ['card'],
      'line_items': checkout,
      'mode': 'payment',
      'success_url': 'https://success.com/',
      'cancel_url': 'https://cancel.com/',
    };

    try {
      final result = await Dio().post(
        "https://api.stripe.com/v1/checkout/sessions",
        data: body,
        options: Options(
          headers: {HttpHeaders.authorizationHeader: auth},
          contentType: "application/x-www-form-urlencoded",
        ),
      );
      return result.data['id'];
    } on DioError catch (e, s) {
      print(e.response);
      throw e;
    }
  }
}
