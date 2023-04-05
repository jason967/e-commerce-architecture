part of 'collections_bloc.dart';

@freezed
class CollectionsState with _$CollectionsState {
  factory CollectionsState({
    @Default(BlocStatus.initial) BlocStatus status,
    @Default(StoreType.market) StoreType storeType,
    @Default([]) List<Collection> collections,
  }) = _CollectionsState;
}
