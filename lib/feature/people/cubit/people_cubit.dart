import 'package:actor/feature/people/data/model/person_model.dart';
import 'package:actor/feature/people/data/repository/people_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'people_state.dart';
part 'people_cubit.freezed.dart';

class PeopleCubit extends Cubit<PeopleState> {
  PeopleRepo repo;
  PeopleCubit(this.repo) : super(const PeopleState.initial());
  String lan = "en";
  int page = 1;

  PopularSuccessPeopleState popular =
      const PopularSuccessPeopleState(model: []);

  Future<void> nextpage() async {
    page++;
    getPopular();
  }

  Future<void> getPopular() async {
    try {
      emit(LoadingPeopleState());
      final data = await repo.getPopulorList(lan: lan, page: page);
      if (data.isRight) {
        emit(popular = popular.copyWith(model: data.right));
      } else {
        emit(ErrorPeopleState(error: data.left.message));
      }
    } catch (e) {
      emit(ErrorPeopleState(error: e.toString()));
    }
  }

  Future<void> loadinfo(PersonModel model) async {
    try {
      final data = await repo.getPersonInfo(model, lan);
      if (data.isRight) {
        emit(SuccessPeopleState(model: data.right));
      } else {
        emit(ErrorPeopleState(error: data.left.message));
      }
    } catch (e) {
      emit(ErrorPeopleState(error: e.toString()));
    }
  }
}
