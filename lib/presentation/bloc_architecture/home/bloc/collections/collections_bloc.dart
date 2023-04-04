import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:sample_project/domain/repository/display.repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../domain/model/display/collection/collection.model.dart';
import '../../../common/bloc/bolc_utils.dart';
import '../../cubit/store_type_cubit.dart';

part 'collections_state.dart';
part 'collections_event.dart';

part 'collections_bloc.freezed.dart';

@injectable
class CollectionsBloc extends Bloc<CollectionsEvent, CollectionsState> {
  final DisplayRepository _displayRepository;
  CollectionsBloc(this._displayRepository)
      : super(CollectionsState(status: BlocStatus.initial)) {
    on<CollectionsInitialized>(_onCollectionsInit);
    on<CollectionsChanged>(_onCollectionsChanged);
  }

  Future _onCollectionsInit(
      CollectionsInitialized event, Emitter<CollectionsState> emit) async {
    emit(state.copyWith(status: BlocStatus.loading));

    final result = await _displayRepository.getCollections(path: '/market');
    // final sample = await _displayRepository.getViewModules(path: '/market/aaa');
    // log('[test] sample : $sample');

    await Future.delayed(const Duration(seconds: 2));
    emit(state.copyWith(status: BlocStatus.success, collections: result));
  }

  Future _onCollectionsChanged(
      CollectionsChanged event, Emitter<CollectionsState> emit) async {
    emit(state.copyWith(status: BlocStatus.loading));

    final storeType = event.storeType.name;

    final result = await _displayRepository.getCollections(path: '/$storeType');

    await Future.delayed(const Duration(seconds: 2));
    emit(state.copyWith(status: BlocStatus.success, collections: result));
  }
}
