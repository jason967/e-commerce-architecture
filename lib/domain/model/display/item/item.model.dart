import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'item.model.freezed.dart';

part 'item.model.g.dart';

@freezed
class Item with _$Item {
  factory Item({
    required String title,
    required String subtitle,
    required String image,
    required String basePrice,
    required String discount,
    required String price,
  }) = _Item;

  factory Item.fromJson(Map<String, Object?> json) => _$ItemFromJson(json);
}
