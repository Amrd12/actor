import 'package:actor/feature/people/data/model/person_model.dart';
import 'package:actor/feature/people/data/repository/person_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'person_state.dart';
part 'person_cubit.freezed.dart';

class PersonCubit extends Cubit<PersonState> {
  final PersonRepo _repo;
  PersonCubit(this._repo) : super(const PersonState.initial());
  String lan = "en";
  int page = 1;
  static const loading = LoadingPersonState();
  PopularSuccessPersonState popular =
      const PopularSuccessPersonState(model: []);

  Future<void> nextpage() async {
    page++;
    getPopular();
  }

  Future<void> getPopular() async {
    try {
      emit(loading);
      final data = await _repo.getPopulorList(lan: lan, page: page);
      if (data.isRight) {
        emit(popular = popular.copyWith(model: data.right));
      } else {
        emit(ErrorPersonState(error: data.left.message));
      }
    } catch (e) {
      emit(ErrorPersonState(error: e.toString()));
    }
  }

  Future<void> loadinfo(PersonModel model) async {
    try {
      final data = await _repo.getPersonInfo(model, lan);
      if (data.isRight) {
        emit(SuccessPersonState(model: data.right));
      } else {
        emit(ErrorPersonState(error: data.left.message));
      }
    } catch (e) {
      emit(ErrorPersonState(error: e.toString()));
    }
  }
}
