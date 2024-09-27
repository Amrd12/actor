import 'package:actor/feature/images/data/model/imges_mixen.dart';
import 'package:actor/feature/people/data/model/person_model.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:actor/core/helpers/enums/gender.dart';
import 'package:actor/feature/media/data/model/media_model.dart';

part 'person_detailed_model.g.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 1) // A different typeId from PersonModel
class PersonDetailedModel extends PersonModel {
  @HiveField(8)
  final String? biography;

  @HiveField(9)
  final String? birthday;

  @HiveField(10)
  final String? deathday;

  @HiveField(11)
  @JsonKey(name: "place_of_birth")
  final String? placeOfBirth;

  @HiveField(12)
  @JsonKey(name: "also_known_as")
  final List<String>? alsoKnownAs;

  @HiveField(13)
  @JsonKey(name: "imdb_id")
  final String? imdbId;

  PersonDetailedModel({
    required bool adult,
    required Gender gender,
    required int id,
    required String name,
    required String image,
    required List<MediaModel> media,
    required String originalName,
    this.biography,
    this.birthday,
    this.deathday,
    this.placeOfBirth,
    this.alsoKnownAs,
    this.imdbId,
  }) : super(
          adult: adult,
          gender: gender,
          id: id,
          name: name,
          image: image,
          media: media,
          originalName: originalName,
        );

  // Factory for creating PersonDetailedModel from PersonModel and additional JSON data
  factory PersonDetailedModel.fromPerson(
      PersonModel person, Map<String, dynamic> json) {
    return PersonDetailedModel(
      adult: person.adult,
      gender: person.gender,
      id: person.id,
      name: person.name,
      image: person.image,
      media: person.media,
      originalName: person.originalName,
      biography: json['biography'] as String?,
      birthday: json['birthday'] as String?,
      deathday: json['deathday'] as String?,
      placeOfBirth: json['place_of_birth'] as String?,
      alsoKnownAs: (json['also_known_as'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      imdbId: json['imdb_id'] as String?,
    );
  }

  // Factory for deserialization
  factory PersonDetailedModel.fromJson(Map<String, dynamic> json) =>
      _$PersonDetailedModelFromJson(json);

  // Method for serialization
  @override
  Map<String, dynamic> toJson() => _$PersonDetailedModelToJson(this);

  @override
  String toString() {
    return 'PersonDetailedModel(biography: $biography, birthday: $birthday, deathday: $deathday, placeOfBirth: $placeOfBirth, alsoKnownAs: $alsoKnownAs, imdbId: $imdbId, ${super.toString()})';
  }

  @override
  PersonDetailedModel copyWith({
    bool? adult,
    Gender? gender,
    int? id,
    String? name,
    String? image,
    List<MediaModel>? media,
    String? originalName,
    String? biography,
    String? birthday,
    String? deathday,
    String? placeOfBirth,
    List<String>? alsoKnownAs,
    String? imdbId,
  }) {
    return PersonDetailedModel(
      adult: adult ?? this.adult,
      gender: gender ?? this.gender,
      id: id ?? this.id,
      name: name ?? this.name,
      image: image ?? this.image,
      media: media ?? this.media,
      originalName: originalName ?? this.originalName,
      biography: biography ?? this.biography,
      birthday: birthday ?? this.birthday,
      deathday: deathday ?? this.deathday,
      placeOfBirth: placeOfBirth ?? this.placeOfBirth,
      alsoKnownAs: alsoKnownAs ?? this.alsoKnownAs,
      imdbId: imdbId ?? this.imdbId,
    );
  }

  @override
  ImgesMixen copyImage({required List<String> imgList}) =>
      copyWith()..imgesList = imgList;
      
}
