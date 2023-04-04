import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'collection.model.freezed.dart';

part 'collection.model.g.dart';

@freezed
class Collection with _$Collection {
  factory Collection({
    required String title,
    required String tabId,
  }) = _Collection;

  factory Collection.fromJson(Map<String, Object?> json) =>
      _$CollectionFromJson(json);
}
