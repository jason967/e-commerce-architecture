import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import 'package:sample_project/data/common/mapper/user/user.mapper.dart';

import 'package:sample_project/data/data_source/user_api/user_api.dart';

import 'package:sample_project/domain/model/user_info/user_info.model.dart';

import '../../domain/repository/user.repository.dart';

@Injectable(as: UserRepository)
class UserRepositoryImpl implements UserRepository {
  final Dio _dio;

  UserRepositoryImpl(this._dio);

  @override
  Future<List<UserInfo>> getUserInfo({Map<String, String>? queries}) async {
    final userApi = UserApi(_dio);

    final result = await userApi.getUserInfos();
    final userInfos = result.map((e) => e.toModel()).toList();

    return userInfos;
  }
}
