import 'package:actor/feature/images/data/model/imges_model.dart';
import 'package:actor/feature/images/data/repository/imges_repo.dart';
import 'package:actor/feature/media/data/model/media_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'images_state.dart';
part 'images_cubit.freezed.dart';

class ImagesCubit extends Cubit<ImagesState> {
  ImgesRepo _repo;
  ImagesCubit(this._repo) : super(const ImagesState.initial());
  static const loading = ImageLoad();
  void LoadImages(ImgesModel mix) async {
    emit(loading);
    try {
      final res = await _repo.getImage(mix: mix, path: mix.apiPath);
      if (res.isRight) {
        final ImgesModel model = res.right;
        emit(ImageSuccess(mix: mix.copyImage(imgList: model.imgesList)));
      } else {
        emit(ImageError(error: res.left.message));
      }
    } catch (e) {
      emit(ImageError(error: e.toString()));
    }
  }
}
