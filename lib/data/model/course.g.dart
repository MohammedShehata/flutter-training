// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Course _$CourseFromJson(Map<String, dynamic> json) => Course(
      id: json['id'] as int?,
      type: json['type'] as String?,
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
      title: json['title'] as String?,
      image: json['image'] as String?,
      description: json['description'] as String?,
      descriptionNoHtml: json['description_no_html'] as String?,
      details: json['details'] as String?,
      keyPoints: (json['key_points'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      keyFeatures: (json['key_features'] as List<dynamic>?)
          ?.map((e) => KeyFeature.fromJson(e as Map<String, dynamic>))
          .toList(),
      requirements: (json['requirements'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      level: json['level'] as int?,
      price: json['price'] as int?,
      discountedPrice: json['discounted_price'] as int?,
      currencyCode: json['currency_code'] as String?,
      subscribersCount: json['subscribers_count'] as int?,
      duration: json['duration'] as int?,
      trainer: json['trainer'] == null
          ? null
          : Trainer.fromJson(json['trainer'] as Map<String, dynamic>),
      commentsCount: json['comments_count'] as int?,
      isInFavorites: json['is_in_favorites'] as bool?,
      isPurchased: json['is_purchased'] as bool?,
      isInCart: json['is_in_cart'] as bool?,
    );

Map<String, dynamic> _$CourseToJson(Course instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'categories': instance.categories,
      'title': instance.title,
      'image': instance.image,
      'description': instance.description,
      'description_no_html': instance.descriptionNoHtml,
      'details': instance.details,
      'key_points': instance.keyPoints,
      'key_features': instance.keyFeatures,
      'requirements': instance.requirements,
      'level': instance.level,
      'price': instance.price,
      'discounted_price': instance.discountedPrice,
      'currency_code': instance.currencyCode,
      'subscribers_count': instance.subscribersCount,
      'duration': instance.duration,
      'trainer': instance.trainer,
      'comments_count': instance.commentsCount,
      'is_in_favorites': instance.isInFavorites,
      'is_purchased': instance.isPurchased,
      'is_in_cart': instance.isInCart,
    };
