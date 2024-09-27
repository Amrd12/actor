import 'package:actor/core/network/api_path_enum.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonEnum(valueField: 'media_type')
@HiveType(typeId: 1)
enum MediaType {
  @JsonValue("movie")
  @HiveField(0)
  movie,
  @JsonValue("tv")
  @HiveField(1)
  tv;

  ApiPath getPath() {
    switch (this) {
      case movie:
        return ApiPath.movie;
      case tv:
        return ApiPath.tv;
      default:
        throw Exception("not Valid Choise");
    }
  }
}
