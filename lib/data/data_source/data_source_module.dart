import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DataSourceModule {
  @injectable
  Dio get dio => Dio();
}
