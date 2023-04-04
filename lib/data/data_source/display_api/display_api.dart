import 'package:dio/dio.dart';

import 'package:retrofit/retrofit.dart';

import '../../dto/display/collections/collection.dto.dart';

part 'display_api.g.dart';

const baseUrl = 'https://jsonplaceholder.typicode.com';

@RestApi(baseUrl: baseUrl)
abstract class DisplayApi {
  factory DisplayApi(Dio dio, {String? baseUrl}) = _DisplayApi;

  @GET('/collections')
  Future<List<CollectionDto>> getCollections();
}
