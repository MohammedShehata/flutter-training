// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trainer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Trainer _$TrainerFromJson(Map<String, dynamic> json) => Trainer(
      id: json['id'] as int?,
      nameEn: json['name_en'] as String?,
      nameAr: json['name_ar'] as String?,
      image: json['image'] as String?,
      title: json['title'] as String?,
      bio: json['bio'] as String?,
      coursesCount: json['courses_count'] as int?,
      buyersCount: json['buyers_count'] as int?,
    );

Map<String, dynamic> _$TrainerToJson(Trainer instance) => <String, dynamic>{
      'id': instance.id,
      'name_en': instance.nameEn,
      'name_ar': instance.nameAr,
      'image': instance.image,
      'title': instance.title,
      'bio': instance.bio,
      'courses_count': instance.coursesCount,
      'buyers_count': instance.buyersCount,
    };
