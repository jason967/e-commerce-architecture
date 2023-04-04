import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../domain/model/display/view_module/view_module.model.dart';
import '../../../../../domain/repository/display.repository.dart';
import '../../../common/bloc/bolc_utils.dart';

part 'view_modules_state.dart';
part 'view_modules_event.dart';

part 'view_modules_bloc.freezed.dart';

@injectable
class ViewModulesBloc extends Bloc<ViewModulesEvent, ViewModulesState> {
  final DisplayRepository _displayRepository;
  ViewModulesBloc(this._displayRepository)
      : super(ViewModulesState(status: BlocStatus.initial)) {
    on<ViewModulesInitialized>(_onCollectionsInit);
  }

  Future _onCollectionsInit(
      ViewModulesInitialized event, Emitter<ViewModulesState> emit) async {
    emit(state.copyWith(status: BlocStatus.loading));

    // final result = await _displayRepository.getCollections(path: '/market');
    final sample = await _displayRepository.getViewModules(path: '/market/aaa');
    // log('[test] sample : $sample');

    await Future.delayed(const Duration(seconds: 2));
    emit(state.copyWith(status: BlocStatus.success, viewModules: sample));
  }

  // Future _onCollectionsChanged(
  //     CollectionsChanged event, Emitter<CollectionsState> emit) async {
  //   emit(state.copyWith(status: BlocStatus.loading));

  //   final storeType = event.storeType.name;

  //   final result = await _displayRepository.getCollections(path: '/$storeType');

  //   await Future.delayed(const Duration(seconds: 2));
  //   emit(state.copyWith(status: BlocStatus.success, collections: result));
  // }
}
