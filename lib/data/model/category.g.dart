// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Category _$CategoryFromJson(Map<String, dynamic> json) => Category(
      id: json['id'] as int?,
      parentId: json['parent_id'] as int?,
      title: json['title'] as String?,
      slug: json['slug'] as String?,
      icon: json['icon'] as String?,
      color: json['color'] as String?,
      buyersCount: json['buyers_count'] as int?,
    );

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
      'id': instance.id,
      'parent_id': instance.parentId,
      'title': instance.title,
      'slug': instance.slug,
      'icon': instance.icon,
      'color': instance.color,
      'buyers_count': instance.buyersCount,
    };
