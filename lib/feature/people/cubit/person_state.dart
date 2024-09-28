part of 'person_cubit.dart';

@freezed
class PersonState with _$PersonState {
  const factory PersonState.initial() = _Initial;
  const factory PersonState.error({required String error}) = ErrorPersonState;
  const factory PersonState.loading() = LoadingPersonState;
  const factory PersonState.success({required PersonModel model}) =
      SuccessPersonState;
  const factory PersonState.popularSuccess({required List<PersonModel> model}) =
      PopularSuccessPersonState;
}
