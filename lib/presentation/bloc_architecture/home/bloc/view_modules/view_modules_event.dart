part of 'view_modules_bloc.dart';

abstract class ViewModulesEvent {
  const ViewModulesEvent();
}

class ViewModulesInitialized extends ViewModulesEvent {
  ViewModulesInitialized({required this.storeType, required this.collections});
  final StoreType storeType;
  final List<Collection> collections;
}

class ViewModulesChanged extends ViewModulesEvent {
  final String tabId;
  ViewModulesChanged(this.tabId);
}
