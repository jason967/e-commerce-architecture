import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'item.dto.freezed.dart';

part 'item.dto.g.dart';

@freezed
class ItemDto with _$ItemDto {
  const factory ItemDto({
    @Default('') String? title,
    @Default('') String? subtitle,
    @Default('') String? image,
    @Default('') String? basePrice,
    @Default('') String? price,
    @Default('') String? discount,
  }) = _ItemDto;

  factory ItemDto.fromJson(Map<String, Object?> json) =>
      _$ItemDtoFromJson(json);
}
