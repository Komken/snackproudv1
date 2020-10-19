import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:snackproudv1/constants.dart';
import 'Home.dart';

class Server {
  Future<String> createCheckout() async {
    final auth = 'Bearer ' + secretKey;
    final body = {
      'payment_method_types': ['card'],
      'line_items': [
        if (Item1Q > 0)
          {
            'price': testItemPrice1,
            'quantity': Item1Q,
          },
        if (Item2Q > 0)
          {
            'price': testItemPrice2,
            'quantity': Item2Q,
          }
      ],
      'mode': 'payment',
      'success_url': 'https://success.com/{CHECKOUT_SESSION_ID}',
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
