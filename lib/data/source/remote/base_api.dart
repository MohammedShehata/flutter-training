import 'dart:convert';

import 'package:flutter_training/data/json_map.dart';
import 'package:http/http.dart' as http;

class BaseApi {
  Future<JsonMap> get(String url,
      [Map<String, dynamic>? queryParameters]) async {
    var uri = Uri.https(BASE_URL, BASE_URL_PATH + url, queryParameters);

    var response = await http.get(uri);
    return jsonDecode(response.body) as JsonMap;
  }

  static const String BASE_URL = "developer.tadarab.com";
  static const String BASE_URL_PATH = "/wp-json/api";
}
