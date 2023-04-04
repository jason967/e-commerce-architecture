part of 'view_modules_bloc.dart';

abstract class ViewModulesEvent {
  const ViewModulesEvent();
}

class ViewModulesInitialized extends ViewModulesEvent {}

// class CollectionsChanged extends CollectionsEvent {
//   final StoreType storeType;
//   CollectionsChanged(this.storeType);
// }
