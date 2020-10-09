import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:snackproudv1/constraints.dart';

var secretKey =
    'sk_test_51HZZIiGEyFEWKkD6o7Plb6hm8yfaQ8qlhx72ri7t3TRZZUrKZL87Byiswl4ft75OcavhvjZj9IsO3jufkzypoAn600iQBZpios';

var itemID = 'price_1Ha0N4GEyFEWKkD6ZThJu5td';

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
