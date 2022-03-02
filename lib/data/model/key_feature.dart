import 'package:json_annotation/json_annotation.dart';

part 'key_feature.g.dart';

@JsonSerializable(ignoreUnannotated: false)
class KeyFeature {
  @JsonKey(name: 'icon')
  String? icon;
  @JsonKey(name: 'text')
  String? text;

  KeyFeature({this.icon, this.text});

  factory KeyFeature.fromJson(Map<String, dynamic> json) =>
      _$KeyFeatureFromJson(json);

  Map<String, dynamic> toJson() => _$KeyFeatureToJson(this);
}
