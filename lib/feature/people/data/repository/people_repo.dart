import 'package:actor/core/helpers/error/error.dart';
import 'package:actor/core/network/api_path_enum.dart';
import 'package:actor/core/network/network.dart';
import 'package:actor/feature/people/data/model/person_detailed_model.dart';
import 'package:actor/feature/people/data/model/person_model.dart';
import 'package:either_dart/either.dart';

class PeopleRepo {
  final RestClient _client;
  PeopleRepo(this._client);

  List<PersonModel> parsePersonList(List<dynamic> js) =>
      List<PersonModel>.from(js
          .map((dynamic i) => PersonModel.fromJson(i as Map<String, dynamic>))
          .toList());

  Future<Either<ErrorModel, List<PersonModel>>> getPopulorList(
      {String lan = "en", int page = 1}) async {
    try {
      final data = await _client.getPersons(page, lan);
      return Right(parsePersonList(data["results"]));
    } catch (e) {
      return Left(ErrorModel(e.toString()));
    }
  }

  Future<Either<ErrorModel, PersonModel>> getPersonInfo(
      PersonModel person, String lan) async {
    try {
      final data = await _client.getInfoId(ApiPath.person, person.id, lan);
      person = PersonDetailedModel.fromPerson(person, data);
      return Right(person);
    } catch (e) {
      return Left(ErrorModel(e.toString()));
    }
  }
  
}
