import 'package:actor/core/helpers/error/error.dart';
import 'package:actor/core/network/api_path_enum.dart';
import 'package:actor/core/network/network.dart';
import 'package:actor/feature/media/data/model/media_model.dart';
import 'package:either_dart/either.dart';

class MediaRepo {
  final RestClient _client;
  MediaRepo(this._client);

  List<MediaModel> parseImagesList(List<dynamic> js) => List<MediaModel>.from(js
      .map((dynamic i) => MediaModel.fromJson(i as Map<String, dynamic>))
      .toList());

  Future<Either<ErrorModel, List<MediaModel>>> getPopulorList(
      {String lan = "en", int page = 1}) async {
    try {
      final data = await _client.getPersons(page, lan);
      return Right(parseImagesList(data["results"]));
    } catch (e) {
      return Left(ErrorModel(e.toString()));
    }
  }

  Future<Either<ErrorModel, MediaModel>> getImageInfo(
      MediaModel media, String lan) async {
    try {
      final data =
          await _client.getInfoId(media.mediaType.getPath(), media.id, lan);

      media = MediaModel.fromJson(data);

      return Right(media);
    } catch (e) {
      return Left(ErrorModel(e.toString()));
    }
  }
}
