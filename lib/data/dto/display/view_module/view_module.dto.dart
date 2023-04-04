import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import '../item/item.dto.dart';

part 'view_module.dto.freezed.dart';

part 'view_module.dto.g.dart';

@freezed
class ViewModuleDto with _$ViewModuleDto {
  const factory ViewModuleDto({
    @Default('') String? type,
    @Default('') String? title,
    @Default('') String? subtitle,
    @Default('') String? image,
    @Default([]) List<ItemDto>? items,
  }) = _ViewModuleDto;

  factory ViewModuleDto.fromJson(Map<String, Object?> json) =>
      _$ViewModuleDtoFromJson(json);
}
