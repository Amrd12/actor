part of 'people_cubit.dart';

@freezed
class PeopleState with _$PeopleState {
  const factory PeopleState.initial() = _Initial;
  const factory PeopleState.error({required String error}) = ErrorPeopleState;
  const factory PeopleState.loading() = LoadingPeopleState;
  const factory PeopleState.success({required PersonModel model}) =
      SuccessPeopleState;
  const factory PeopleState.popularSuccess({required List<PersonModel> model}) =
      PopularSuccessPeopleState;
}
