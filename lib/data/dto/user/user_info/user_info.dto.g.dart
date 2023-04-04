// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserInfoDto _$$_UserInfoDtoFromJson(Map<String, dynamic> json) =>
    _$_UserInfoDto(
      userId: json['userId'] as int? ?? 0,
      id: json['id'] as int? ?? 0,
      title: json['title'] as String? ?? '',
      body: json['body'] as String? ?? '',
    );

Map<String, dynamic> _$$_UserInfoDtoToJson(_$_UserInfoDto instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
    };
