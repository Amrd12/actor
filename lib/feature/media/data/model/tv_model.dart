// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:actor/feature/images/data/model/imges_mixen.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:actor/core/helpers/enums/media_type.dart';

import 'media_model.dart';

part 'tv_model.g.dart';

@HiveType(typeId: 3)
@JsonSerializable()
class TVModel extends MediaModel {
  @override
  @JsonKey(name: "name")
  @HiveField(2)
  String get name => super.name;

  @HiveField(6)
  @JsonKey(name: "first_air_date")
  final String firstAirDate;

  @HiveField(7)
  @JsonKey(name: "number_of_seasons")
  final int? numberOfSeasons;

  TVModel({
    required super.id,
    required super.name,
    required super.image,
    required super.overview,
    required super.mediaType,
    required this.firstAirDate,
    required this.numberOfSeasons,
  });

  // Add factory method for JSON deserialization
  factory TVModel.fromJson(Map<String, dynamic> json) =>
      _$TVModelFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$TVModelToJson(this);

  TVModel copyWith({
    int? id,
    String? name,
    String? image,
    String? overview,
    MediaType? mediaType,
    String? firstAirDate,
    int? numberOfSeasons,
  }) {
    return TVModel(
      id: id ?? this.id,
      name: name ?? this.name,
      image: image ?? this.image,
      overview: overview ?? this.overview,
      mediaType: mediaType ?? this.mediaType,
      firstAirDate: firstAirDate ?? this.firstAirDate,
      numberOfSeasons: numberOfSeasons ?? this.numberOfSeasons,
    );
  }

  @override
  ImgesMixen copyImage({required List<String> imgList}) =>
      copyWith()..imgesList = imgList;
}
