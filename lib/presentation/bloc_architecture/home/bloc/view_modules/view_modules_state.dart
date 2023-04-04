part of 'view_modules_bloc.dart';

@freezed
class ViewModulesState with _$ViewModulesState {
  factory ViewModulesState({
    @Default(BlocStatus.initial) BlocStatus status,
    @Default([]) List<ViewModule> viewModules,
  }) = _ViewModulesState;
}
