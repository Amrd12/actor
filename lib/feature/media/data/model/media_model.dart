import 'package:actor/core/helpers/enums/media_type.dart';
import 'package:actor/feature/images/data/model/imges_model.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';
import 'movie_model.dart';
import 'tv_model.dart';

// part 'media_model.g.dart';

// @HiveType(typeId: 1)
abstract class MediaModel extends ImgesModel {
  @HiveField(1)
  @JsonKey(name: "id")
  @override
  int id;

  @HiveField(2)
  @JsonKey(name: "title")
  final String name;

  @HiveField(3)
  @JsonKey(name: "poster_path")
  final String image;

  @HiveField(4)
  final String overview;

  @JsonKey(name: "media_type")
  @HiveField(5)
  final MediaType mediaType;

  MediaModel({
    required this.id,
    required this.name,
    required this.image,
    required this.overview,
    required this.mediaType,
  });

  // Custom factory method for handling different media types
  factory MediaModel.fromJson(Map<String, dynamic> json) {
    final mediaTypeString = json['media_type'] as String?;
    if (mediaTypeString == 'movie') {
      return MovieModel.fromJson(json);
    } else if (mediaTypeString == 'tv') {
      return TVModel.fromJson(json);
    } else {
      throw Exception("Unknown media type: $mediaTypeString");
    }
  }

  // Define a toJson method for subclasses to implement
  Map<String, dynamic> toJson();

  MediaModel copyWith();
}
