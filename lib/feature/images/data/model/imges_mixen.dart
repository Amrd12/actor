import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';

mixin ImgesMixen {
  List<String> _imgesList = [];

  @HiveField(0)
  // @JsonKey(name: "profile", defaultValue: [], fromJson: _imgList)
  set imgesList(List<String> imgs) => _imgesList = imgs;

  @HiveField(0)
  @JsonKey(name: "profile", defaultValue: [], fromJson: imgList)
  List<String> get imgesList => _imgesList;

  bool get isImgesListEmpty => _imgesList.isEmpty;

  ImgesMixen copyImage({required List<String> imgList});
}

List<String> imgList(Map<String, dynamic> data) =>
    List.from((data["profiles"]! as List).map((e) => e["file_path"]));
