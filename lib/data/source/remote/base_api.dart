import 'dart:async';
import 'dart:convert';

import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:flutter_training/data/json_map.dart';
import 'package:flutter_training/flavor_constants.dart';
import 'package:http/http.dart' as http;

class BaseApi {
  Future<JsonMap> get(String url,
      [Map<String, dynamic>? queryParameters]) async {
    var uri = Uri.https(_baseUrl, _baseUrlPath + url, queryParameters);

    var response = await http.get(uri);
    return jsonDecode(response.body) as JsonMap;
  }
}

String _baseUrl = FlavorConfig.instance.variables[BASE_URL];
String _baseUrlPath = FlavorConfig.instance.variables[BASE_URL_PATH];
