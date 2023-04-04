import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import '../item/item.model.dart';

part 'view_module.model.freezed.dart';

part 'view_module.model.g.dart';

@freezed
class ViewModule with _$ViewModule {
  factory ViewModule({
    required String type,
    required String title,
    required String subtitle,
    required String image,
    required List<Item> items,
  }) = _ViewModule;

  factory ViewModule.fromJson(Map<String, Object?> json) =>
      _$ViewModuleFromJson(json);
}
