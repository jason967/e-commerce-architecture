// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'view_modules_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ViewModulesState {
  BlocStatus get status => throw _privateConstructorUsedError;
  StoreType get storeType => throw _privateConstructorUsedError;
  String get collection => throw _privateConstructorUsedError;
  Map<String, List<ViewModule>> get viewModules =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ViewModulesStateCopyWith<ViewModulesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewModulesStateCopyWith<$Res> {
  factory $ViewModulesStateCopyWith(
          ViewModulesState value, $Res Function(ViewModulesState) then) =
      _$ViewModulesStateCopyWithImpl<$Res, ViewModulesState>;
  @useResult
  $Res call(
      {BlocStatus status,
      StoreType storeType,
      String collection,
      Map<String, List<ViewModule>> viewModules});
}

/// @nodoc
class _$ViewModulesStateCopyWithImpl<$Res, $Val extends ViewModulesState>
    implements $ViewModulesStateCopyWith<$Res> {
  _$ViewModulesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? storeType = null,
    Object? collection = null,
    Object? viewModules = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      storeType: null == storeType
          ? _value.storeType
          : storeType // ignore: cast_nullable_to_non_nullable
              as StoreType,
      collection: null == collection
          ? _value.collection
          : collection // ignore: cast_nullable_to_non_nullable
              as String,
      viewModules: null == viewModules
          ? _value.viewModules
          : viewModules // ignore: cast_nullable_to_non_nullable
              as Map<String, List<ViewModule>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ViewModulesStateCopyWith<$Res>
    implements $ViewModulesStateCopyWith<$Res> {
  factory _$$_ViewModulesStateCopyWith(
          _$_ViewModulesState value, $Res Function(_$_ViewModulesState) then) =
      __$$_ViewModulesStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlocStatus status,
      StoreType storeType,
      String collection,
      Map<String, List<ViewModule>> viewModules});
}

/// @nodoc
class __$$_ViewModulesStateCopyWithImpl<$Res>
    extends _$ViewModulesStateCopyWithImpl<$Res, _$_ViewModulesState>
    implements _$$_ViewModulesStateCopyWith<$Res> {
  __$$_ViewModulesStateCopyWithImpl(
      _$_ViewModulesState _value, $Res Function(_$_ViewModulesState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? storeType = null,
    Object? collection = null,
    Object? viewModules = null,
  }) {
    return _then(_$_ViewModulesState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      storeType: null == storeType
          ? _value.storeType
          : storeType // ignore: cast_nullable_to_non_nullable
              as StoreType,
      collection: null == collection
          ? _value.collection
          : collection // ignore: cast_nullable_to_non_nullable
              as String,
      viewModules: null == viewModules
          ? _value._viewModules
          : viewModules // ignore: cast_nullable_to_non_nullable
              as Map<String, List<ViewModule>>,
    ));
  }
}

/// @nodoc

class _$_ViewModulesState implements _ViewModulesState {
  _$_ViewModulesState(
      {this.status = BlocStatus.initial,
      this.storeType = StoreType.market,
      this.collection = '',
      final Map<String, List<ViewModule>> viewModules = const {}})
      : _viewModules = viewModules;

  @override
  @JsonKey()
  final BlocStatus status;
  @override
  @JsonKey()
  final StoreType storeType;
  @override
  @JsonKey()
  final String collection;
  final Map<String, List<ViewModule>> _viewModules;
  @override
  @JsonKey()
  Map<String, List<ViewModule>> get viewModules {
    if (_viewModules is EqualUnmodifiableMapView) return _viewModules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_viewModules);
  }

  @override
  String toString() {
    return 'ViewModulesState(status: $status, storeType: $storeType, collection: $collection, viewModules: $viewModules)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ViewModulesState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.storeType, storeType) ||
                other.storeType == storeType) &&
            (identical(other.collection, collection) ||
                other.collection == collection) &&
            const DeepCollectionEquality()
                .equals(other._viewModules, _viewModules));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, storeType, collection,
      const DeepCollectionEquality().hash(_viewModules));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ViewModulesStateCopyWith<_$_ViewModulesState> get copyWith =>
      __$$_ViewModulesStateCopyWithImpl<_$_ViewModulesState>(this, _$identity);
}

abstract class _ViewModulesState implements ViewModulesState {
  factory _ViewModulesState(
      {final BlocStatus status,
      final StoreType storeType,
      final String collection,
      final Map<String, List<ViewModule>> viewModules}) = _$_ViewModulesState;

  @override
  BlocStatus get status;
  @override
  StoreType get storeType;
  @override
  String get collection;
  @override
  Map<String, List<ViewModule>> get viewModules;
  @override
  @JsonKey(ignore: true)
  _$$_ViewModulesStateCopyWith<_$_ViewModulesState> get copyWith =>
      throw _privateConstructorUsedError;
}
