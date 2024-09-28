import 'package:actor/feature/images/data/model/imges_model.dart';
import 'package:actor/feature/images/data/repository/imges_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'images_state.dart';
part 'images_cubit.freezed.dart';

class ImagesCubit extends Cubit<ImagesState> {
  ImgesRepo _repo;
  ImagesCubit(this._repo) : super(const ImagesState.initial());

  void LoadImages(ImgesModel mix) {
    
  }
}
