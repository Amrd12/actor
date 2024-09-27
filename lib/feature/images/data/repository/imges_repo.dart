import 'package:actor/core/helpers/error/error.dart';
import 'package:actor/core/network/api_path_enum.dart';
import 'package:actor/core/network/network.dart';
import 'package:actor/feature/images/data/model/imges_mixen.dart';
import 'package:either_dart/either.dart';

class ImgesRepo {
  final RestClient client;
  ImgesRepo({required this.client});

  Future<Either<ErrorModel, ImgesMixen>> getImage(
      {required ImgesMixen mix, required ApiPath path}) async {
    try {
      final data = await client.getImages(path, (mix as dynamic).id!);
      List<String> imgList =
          List.from((data["profiles"]! as List).map(( e) => e["file_path"]));
      return Right(mix.copyImage(imgList: imgList));
    } catch (e) {
      return Left(ErrorModel(e.toString()));
    }
  }
}
