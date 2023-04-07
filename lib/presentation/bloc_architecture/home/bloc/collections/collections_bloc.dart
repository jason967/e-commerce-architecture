import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:sample_project/domain/model/common/request.model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sample_project/domain/usecase/display/get_collections.dart';

import '../../../../../domain/model/display/collection/collection.model.dart';
import '../../../../../domain/usecase/display_usecase.dart';
import '../../../common/bloc/bolc_utils.dart';
import '../../cubit/store_type_cubit.dart';

part 'collections_state.dart';
part 'collections_event.dart';

part 'collections_bloc.freezed.dart';

@injectable
class CollectionsBloc extends Bloc<CollectionsEvent, CollectionsState> {
  final DisplayUsecase _displayUsecase;
  CollectionsBloc(this._displayUsecase)
      : super(CollectionsState(status: BlocStatus.initial)) {
    on<CollectionsInitialized>(_onCollectionsInit);
    on<CollectionsChanged>(_onCollectionsChanged);
  }

  Future _onCollectionsInit(
      CollectionsInitialized event, Emitter<CollectionsState> emit) async {
    emit(state.copyWith(status: BlocStatus.loading));

    final path = '/${state.storeType.name}';
    Map<String, String> params = {};
    final request = Request(path: path, params: params);

    //TODO 제네릭 더 멋지게 사용할 방법 찾아보기
    final result = await _displayUsecase<Collection>(GetCollections(request));

    // await Future.delayed(const Duration(seconds: 2));
    emit(state.copyWith(status: BlocStatus.success, collections: result));
  }

  Future _onCollectionsChanged(
      CollectionsChanged event, Emitter<CollectionsState> emit) async {
    emit(state.copyWith(status: BlocStatus.loading));

    final storeType = event.storeType;

    final path = '/${storeType.name}';
    Map<String, String> params = {};
    final request = Request(path: path, params: params);

    final result = await _displayUsecase<Collection>(GetCollections(request));

    // await Future.delayed(const Duration(seconds: 2));
    emit(state.copyWith(
        status: BlocStatus.success, collections: result, storeType: storeType));
  }
}
