import 'package:dio/dio.dart';

import 'package:retrofit/retrofit.dart';

import '../../dto/user/user_info/user_info.dto.dart';

part 'user_api.g.dart';

const baseUrl = 'https://jsonplaceholder.typicode.com';

@RestApi(baseUrl: baseUrl)
abstract class UserApi {
  factory UserApi(Dio dio, {String? baseUrl}) = _UserApi;

  @GET('/posts')
  Future<List<UserInfoDto>> getUserInfos();
}
