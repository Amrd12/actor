part of 'images_cubit.dart';

@freezed
class ImagesState with _$ImagesState {
  const factory ImagesState.initial() = _Initial;
  const factory ImagesState.success({required ImgesModel mix}) = ImageSuccess;
  const factory ImagesState.Error({required String error}) = ImageError;
  const factory ImagesState.Load() = ImageLoad;
}
