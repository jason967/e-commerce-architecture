part of 'collections_bloc.dart';

abstract class CollectionsEvent {
  const CollectionsEvent();
}

class CollectionsInitialized extends CollectionsEvent {}

class CollectionsChanged extends CollectionsEvent {
  final StoreType storeType;
  CollectionsChanged(this.storeType);
}
