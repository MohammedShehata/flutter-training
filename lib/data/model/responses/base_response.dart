import 'package:json_annotation/json_annotation.dart';

class BaseResponse {
  @JsonKey(name: 'status_code')
  String? statusCode;
  @JsonKey(name: 'message')
  String? message;

  BaseResponse();
}
