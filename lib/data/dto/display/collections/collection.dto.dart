import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'collection.dto.freezed.dart';

part 'collection.dto.g.dart';

@freezed
class CollectionDto with _$CollectionDto {
  const factory CollectionDto({
    @Default('') String? title,
    @Default('') String? tabId,
  }) = _CollectionDto;

  factory CollectionDto.fromJson(Map<String, Object?> json) =>
      _$CollectionDtoFromJson(json);
}
