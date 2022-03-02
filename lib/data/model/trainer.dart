import 'package:json_annotation/json_annotation.dart';

part 'trainer.g.dart';

@JsonSerializable(ignoreUnannotated: false)
class Trainer {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name_en')
  String? nameEn;
  @JsonKey(name: 'name_ar')
  String? nameAr;
  @JsonKey(name: 'image')
  String? image;
  @JsonKey(name: 'title')
  String? title;
  @JsonKey(name: 'bio')
  String? bio;
  @JsonKey(name: 'courses_count')
  int? coursesCount;
  @JsonKey(name: 'buyers_count')
  int? buyersCount;

  Trainer(
      {this.id,
      this.nameEn,
      this.nameAr,
      this.image,
      this.title,
      this.bio,
      this.coursesCount,
      this.buyersCount});

  factory Trainer.fromJson(Map<String, dynamic> json) =>
      _$TrainerFromJson(json);

  Map<String, dynamic> toJson() => _$TrainerToJson(this);
}
