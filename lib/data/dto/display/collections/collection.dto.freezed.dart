// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'collection.dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CollectionDto _$CollectionDtoFromJson(Map<String, dynamic> json) {
  return _CollectionDto.fromJson(json);
}

/// @nodoc
mixin _$CollectionDto {
  String? get title => throw _privateConstructorUsedError;
  String? get tabId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CollectionDtoCopyWith<CollectionDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectionDtoCopyWith<$Res> {
  factory $CollectionDtoCopyWith(
          CollectionDto value, $Res Function(CollectionDto) then) =
      _$CollectionDtoCopyWithImpl<$Res, CollectionDto>;
  @useResult
  $Res call({String? title, String? tabId});
}

/// @nodoc
class _$CollectionDtoCopyWithImpl<$Res, $Val extends CollectionDto>
    implements $CollectionDtoCopyWith<$Res> {
  _$CollectionDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? tabId = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      tabId: freezed == tabId
          ? _value.tabId
          : tabId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CollectionDtoCopyWith<$Res>
    implements $CollectionDtoCopyWith<$Res> {
  factory _$$_CollectionDtoCopyWith(
          _$_CollectionDto value, $Res Function(_$_CollectionDto) then) =
      __$$_CollectionDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title, String? tabId});
}

/// @nodoc
class __$$_CollectionDtoCopyWithImpl<$Res>
    extends _$CollectionDtoCopyWithImpl<$Res, _$_CollectionDto>
    implements _$$_CollectionDtoCopyWith<$Res> {
  __$$_CollectionDtoCopyWithImpl(
      _$_CollectionDto _value, $Res Function(_$_CollectionDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? tabId = freezed,
  }) {
    return _then(_$_CollectionDto(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      tabId: freezed == tabId
          ? _value.tabId
          : tabId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CollectionDto with DiagnosticableTreeMixin implements _CollectionDto {
  const _$_CollectionDto({this.title = '', this.tabId = ''});

  factory _$_CollectionDto.fromJson(Map<String, dynamic> json) =>
      _$$_CollectionDtoFromJson(json);

  @override
  @JsonKey()
  final String? title;
  @override
  @JsonKey()
  final String? tabId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CollectionDto(title: $title, tabId: $tabId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CollectionDto'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('tabId', tabId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CollectionDto &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.tabId, tabId) || other.tabId == tabId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, tabId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CollectionDtoCopyWith<_$_CollectionDto> get copyWith =>
      __$$_CollectionDtoCopyWithImpl<_$_CollectionDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CollectionDtoToJson(
      this,
    );
  }
}

abstract class _CollectionDto implements CollectionDto {
  const factory _CollectionDto({final String? title, final String? tabId}) =
      _$_CollectionDto;

  factory _CollectionDto.fromJson(Map<String, dynamic> json) =
      _$_CollectionDto.fromJson;

  @override
  String? get title;
  @override
  String? get tabId;
  @override
  @JsonKey(ignore: true)
  _$$_CollectionDtoCopyWith<_$_CollectionDto> get copyWith =>
      throw _privateConstructorUsedError;
}
