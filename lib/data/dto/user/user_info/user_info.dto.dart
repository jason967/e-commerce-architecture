import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'user_info.dto.freezed.dart';

part 'user_info.dto.g.dart';

@freezed
class UserInfoDto with _$UserInfoDto {
  const factory UserInfoDto({
    @Default(0) int? userId,
    @Default(0) int? id,
    @Default('') String? title,
    @Default('') String? body,
  }) = _UserInfoDto;

  factory UserInfoDto.fromJson(Map<String, Object?> json) =>
      _$UserInfoDtoFromJson(json);
}
