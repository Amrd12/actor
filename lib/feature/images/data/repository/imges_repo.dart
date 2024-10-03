import 'package:actor/core/helpers/error/error.dart';
import 'package:actor/core/network/api_path_enum.dart';
import 'package:actor/core/network/network.dart';
import 'package:actor/feature/images/data/model/imges_model.dart';
import 'package:either_dart/either.dart';

class ImgesRepo {
  final RestClient _client;
  ImgesRepo(this._client);

  Future<Either<ErrorModel, ImgesModel>> getImage(
      {required ImgesModel mix, required ApiPath path}) async {
    try {
      final data = await _client.getImages(path, mix.id);
      List<String> imgList =
          List.from((data["profiles"]! as List).map((e) => e["file_path"]));
      return Right(mix = mix.copyImage(imgList: imgList));
    } catch (e) {
      return Left(ErrorModel(e.toString()));
    }
  }
}
