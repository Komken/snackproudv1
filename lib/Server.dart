import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:snackproudv1/constraints.dart';

var secretKey =
    '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';

var itemID = 'price_1HZxl1CKvfTJxPEeZcwzmbTR';

class Server {
  Future<String> createCheckout() async {
    final auth = 'Bearer ' + secretKey;
    final body = {
      'payment_method_types': ['card'],
      'line_items': [
        {
          'price': itemID,
          'quantity': 1,
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
