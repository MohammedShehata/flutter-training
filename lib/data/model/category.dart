import 'package:json_annotation/json_annotation.dart';

part 'category.g.dart';

@JsonSerializable(ignoreUnannotated: false)
class Category {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'parent_id')
  int? parentId;
  @JsonKey(name: 'title')
  String? title;
  @JsonKey(name: 'slug')
  String? slug;
  @JsonKey(name: 'icon')
  String? icon;
  @JsonKey(name: 'color')
  String? color;
  @JsonKey(name: 'buyers_count')
  int? buyersCount;

  Category(
      {this.id,
      this.parentId,
      this.title,
      this.slug,
      this.icon,
      this.color,
      this.buyersCount});

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}
