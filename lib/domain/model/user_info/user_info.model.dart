import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'user_info.model.freezed.dart';

part 'user_info.model.g.dart';

@freezed
class UserInfo with _$UserInfo {
  factory UserInfo({
    required int userId,
    required int id,
    required String title,
    required String body,
  }) = _UserInfo;

  factory UserInfo.fromJson(Map<String, Object?> json) =>
      _$UserInfoFromJson(json);
}
