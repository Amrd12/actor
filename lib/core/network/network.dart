import 'package:actor/core/network/api_constanse.dart';
import 'package:actor/core/network/api_path_enum.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
part 'network.g.dart';

@RestApi(baseUrl: ApiConstanse.baseUrl)
abstract class RestClient {
  factory RestClient(Dio dio, {String? baseUrl}) = _RestClient;
  
  @GET('/person/popular')
  Future<Map<String, dynamic>> getPersons(
    // @Query("api_key") String apikey,
    @Query("page") int page,
    @Query("language") String language,
  );

  @GET("/{info}/{id}")
  Future<Map<String, dynamic>> getInfoId(
    @Path("info") ApiPath img,
    @Path('id') int id,
    // @Query("api_key") String apikey,
    @Query("language") String language,
  );

  @GET("/{img}/{id}/images")
  Future<Map<String, dynamic>> getImages(
    @Path("img") ApiPath img,
    @Path('id') int id,
    // @Query("api_key") String apikey,
  );
}
