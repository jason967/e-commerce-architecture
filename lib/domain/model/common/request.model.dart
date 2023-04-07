import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

part 'request.model.freezed.dart';

part 'request.model.g.dart';

@freezed
@injectable
class Request with _$Request {
  factory Request({
    required String path,
    required Map<String, String> params,
  }) = _Request;

  factory Request.fromJson(Map<String, Object?> json) =>
      _$RequestFromJson(json);
}
