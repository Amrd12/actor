import 'package:actor/core/network/api_path_enum.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';

abstract class ImgesModel extends HiveObject {
  @HiveField(0)
  @JsonKey(name: "profile", defaultValue: [], fromJson: imgList)
  List<String> imgesList = [];

  bool get isImgesListEmpty => imgesList.isEmpty;

  ImgesModel copyImage({required List<String> imgList});

  abstract ApiPath   apiPath; 
  abstract int  id;
}

List<String> imgList(Map<String, dynamic> data) =>
    List.from((data["profiles"] as List).map((e) => e["file_path"]));
