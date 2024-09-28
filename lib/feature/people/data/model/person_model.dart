// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:actor/core/network/api_path_enum.dart';
import 'package:actor/feature/images/data/model/imges_model.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:actor/core/helpers/enums/gender.dart';
import 'package:actor/feature/media/data/model/media_model.dart';

part 'person_model.g.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 0)
class PersonModel extends ImgesModel {
  @HiveField(1)
  final bool adult;

  @override
  @JsonKey(includeFromJson: true, includeToJson: true)
  ApiPath apiPath = ApiPath.person; 

  @HiveField(2)
  final Gender gender;

  @HiveField(3)
  @override
  int id;

  @HiveField(4)
  final String name;

  @HiveField(5)
  @JsonKey(name: "original_name", defaultValue: "")
  final String originalName;

  @HiveField(6)
  @JsonKey(name: "profile_path")
  final String image;

  @HiveField(7)
  @JsonKey(name: "known_for", defaultValue: [])
  final List<MediaModel> media;

  PersonModel({
    required this.adult,
    required this.gender,
    required this.id,
    required this.name,
    required this.image,
    required this.media,
    required this.originalName,
  });

  // Factory for deserialization
  factory PersonModel.fromJson(Map<String, dynamic> json) =>
      _$PersonModelFromJson(json);

  // Method for serialization
  Map<String, dynamic> toJson() => _$PersonModelToJson(this);

  @override
  String toString() {
    return 'Person(adult: $adult, gender: $gender, id: $id, name: $name, image: $image, originalName: $originalName, media: $media)';
  }

  PersonModel copyWith({
    bool? adult,
    Gender? gender,
    int? id,
    String? name,
    String? image,
    List<MediaModel>? media,
    String? originalName,
  }) {
    return PersonModel(
      adult: adult ?? this.adult,
      gender: gender ?? this.gender,
      id: id ?? this.id,
      name: name ?? this.name,
      image: image ?? this.image,
      media: media ?? this.media,
      originalName: originalName ?? this.originalName,
    );
  }

  @override
  ImgesModel copyImage({required List<String> imgList}) =>
      copyWith()..imgesList = imgList;
}
