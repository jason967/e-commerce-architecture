// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Request _$$_RequestFromJson(Map<String, dynamic> json) => _$_Request(
      path: json['path'] as String,
      params: Map<String, String>.from(json['params'] as Map),
    );

Map<String, dynamic> _$$_RequestToJson(_$_Request instance) =>
    <String, dynamic>{
      'path': instance.path,
      'params': instance.params,
    };
