// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:actor/core/network/api_path_enum.dart';
import 'package:actor/feature/images/data/model/imges_model.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:actor/core/helpers/enums/media_type.dart';

import 'media_model.dart';

part 'movie_model.g.dart';

@HiveType(typeId: 2)
@JsonSerializable()
class MovieModel extends MediaModel {
  @HiveField(6)
  @JsonKey(name: "release_date")
  final String releaseDate;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  ApiPath apiPath = ApiPath.movie;
  MovieModel({
    required super.id,
    required super.name,
    required super.image,
    required super.overview,
    required super.mediaType,
    required this.releaseDate,
  });

  // Add factory method for JSON deserialization
  factory MovieModel.fromJson(Map<String, dynamic> json) =>
      _$MovieModelFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$MovieModelToJson(this);

  @override
  MovieModel copyWith({
    int? id,
    String? name,
    String? image,
    String? overview,
    MediaType? mediaType,
    String? releaseDate,
  }) {
    return MovieModel(
      id: id ?? this.id,
      name: name ?? this.name,
      image: image ?? this.image,
      overview: overview ?? this.overview,
      mediaType: mediaType ?? this.mediaType,
      releaseDate: releaseDate ?? this.releaseDate,
    );
  }

  @override
  ImgesModel copyImage({required List<String> imgList}) =>
      copyWith()..imgesList = imgList;
}
