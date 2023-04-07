// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:sample_project/data/data_source/data_source_module.dart'
    as _i15;
import 'package:sample_project/data/repository/display.repository.impl.dart'
    as _i5;
import 'package:sample_project/data/repository/user.repository.impl.dart'
    as _i9;
import 'package:sample_project/domain/model/common/request.model.dart' as _i7;
import 'package:sample_project/domain/repository/display.repository.dart'
    as _i4;
import 'package:sample_project/domain/repository/user.repository.dart' as _i8;
import 'package:sample_project/domain/usecase/base/api_usecase.dart' as _i11;
import 'package:sample_project/domain/usecase/display/get_collections.dart'
    as _i12;
import 'package:sample_project/domain/usecase/display/get_view_modules.dart'
    as _i14;
import 'package:sample_project/domain/usecase/display_usecase.dart' as _i6;
import 'package:sample_project/presentation/bloc_architecture/home/bloc/collections/collections_bloc.dart'
    as _i13;
import 'package:sample_project/presentation/bloc_architecture/home/bloc/view_modules/view_modules_bloc.dart'
    as _i10;

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final dataSourceModule = _$DataSourceModule();
  gh.factory<_i3.Dio>(() => dataSourceModule.dio);
  gh.factory<_i4.DisplayRepository>(
      () => _i5.DisplayRepositoryImpl(gh<_i3.Dio>()));
  gh.factory<_i6.DisplayUsecase>(
      () => _i6.DisplayUsecase(gh<_i4.DisplayRepository>()));
  gh.factory<_i7.Request>(() => _i7.Request(
        path: gh<String>(),
        params: gh<Map<String, String>>(),
      ));
  gh.factory<_i8.UserRepository>(() => _i9.UserRepositoryImpl(gh<_i3.Dio>()));
  gh.factory<_i10.ViewModulesBloc>(
      () => _i10.ViewModulesBloc(gh<_i6.DisplayUsecase>()));
  gh.factory<_i11.ApiUsecase>(() => _i12.GetCollections(gh<_i7.Request>()));
  gh.factory<_i13.CollectionsBloc>(
      () => _i13.CollectionsBloc(gh<_i6.DisplayUsecase>()));
  gh.factory<_i14.GetViewModules>(() => _i14.GetViewModules(gh<_i7.Request>()));
  return getIt;
}

class _$DataSourceModule extends _i15.DataSourceModule {}
