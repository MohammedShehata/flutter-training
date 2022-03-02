import 'package:flutter_training/data/model/trainer.dart';
import 'package:json_annotation/json_annotation.dart';

import 'category.dart';
import 'key_feature.dart';

part 'course.g.dart';

@JsonSerializable(ignoreUnannotated: false)
class Course {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'type')
  String? type;
  @JsonKey(name: 'categories')
  List<Category>? categories;
  @JsonKey(name: 'title')
  String? title;
  @JsonKey(name: 'image')
  String? image;
  @JsonKey(name: 'description')
  String? description;
  @JsonKey(name: 'description_no_html')
  String? descriptionNoHtml;
  @JsonKey(name: 'details')
  String? details;
  @JsonKey(name: 'key_points')
  List<String>? keyPoints;
  @JsonKey(name: 'key_features')
  List<KeyFeature>? keyFeatures;
  @JsonKey(name: 'requirements')
  List<String>? requirements;
  @JsonKey(name: 'level')
  int? level;
  @JsonKey(name: 'price')
  int? price;
  @JsonKey(name: 'discounted_price')
  int? discountedPrice;
  @JsonKey(name: 'currency_code')
  String? currencyCode;
  @JsonKey(name: 'subscribers_count')
  int? subscribersCount;
  @JsonKey(name: 'duration')
  int? duration;
  @JsonKey(name: 'trainer')
  Trainer? trainer;
  @JsonKey(name: 'comments_count')
  int? commentsCount;
  @JsonKey(name: 'is_in_favorites')
  bool? isInFavorites;
  @JsonKey(name: 'is_purchased')
  bool? isPurchased;
  @JsonKey(name: 'is_in_cart')
  bool? isInCart;

  Course(
      {this.id,
      this.type,
      this.categories,
      this.title,
      this.image,
      this.description,
      this.descriptionNoHtml,
      this.details,
      this.keyPoints,
      this.keyFeatures,
      this.requirements,
      this.level,
      this.price,
      this.discountedPrice,
      this.currencyCode,
      this.subscribersCount,
      this.duration,
      this.trainer,
      this.commentsCount,
      this.isInFavorites,
      this.isPurchased,
      this.isInCart});

  factory Course.fromJson(Map<String, dynamic> json) => _$CourseFromJson(json);

  Map<String, dynamic> toJson() => _$CourseToJson(this);
}
