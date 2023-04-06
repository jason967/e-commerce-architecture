import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sample_project/domain/model/display/collection/collection.model.dart';
import 'package:sample_project/presentation/bloc_architecture/home/cubit/store_type_cubit.dart';

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
    on<ViewModulesInitialized>(_onViewModulesInit);
    on<ViewModulesChanged>(_onViewModulesChanged);
  }

  Future _onViewModulesInit(
      ViewModulesInitialized event, Emitter<ViewModulesState> emit) async {
    emit(state.copyWith(status: BlocStatus.loading));

    Map<String, List<ViewModule>> modules = {};
    for (final collection in event.collections) {
      modules[collection.tabId] = [];
    }
    final storeType = event.storeType;
    final mainTab = event.collections.first.tabId;

    // final result = await _displayRepository.getCollections(path: '/market');
    final sample = await _displayRepository.getViewModules(
        path: '/${storeType.name}/$mainTab');

    modules[mainTab] = sample;
    // modules.forEach((key, value) {
    //   log('[test] $key : $value');
    // });
    await Future.delayed(const Duration(seconds: 2));
    emit(state.copyWith(status: BlocStatus.success, viewModules: modules));
  }

  Future _onViewModulesChanged(
      ViewModulesChanged event, Emitter<ViewModulesState> emit) async {
    emit(state.copyWith(status: BlocStatus.loading));

    final storeType = state.storeType;
    final tabId = event.tabId;

    final viewModule = await _displayRepository.getViewModules(
        path: '/${storeType.name}/$tabId');
    Map<String, List<ViewModule>> modules = {...state.viewModules};
    if (modules[tabId] == null || modules[tabId]!.isEmpty) {
      modules[tabId] = viewModule;
    }

    await Future.delayed(const Duration(seconds: 2));
    emit(state.copyWith(status: BlocStatus.success, viewModules: modules));
  }
}
