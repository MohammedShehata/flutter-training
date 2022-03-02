import 'package:flutter_training/data/model/course.dart';
import 'package:flutter_training/data/model/responses/base_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'courses_response.g.dart';

@JsonSerializable(ignoreUnannotated: false)
class CoursesResponse extends BaseResponse {
  @JsonKey(name: 'data')
  Data? data;

  CoursesResponse(this.data);

  factory CoursesResponse.fromJson(Map<String, dynamic> json) =>
      _$CoursesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CoursesResponseToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class Data {
  @JsonKey(name: 'courses')
  List<Course>? courses;

  Data({this.courses});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
