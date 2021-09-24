// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'TrendingModel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TrendingModel _$TrendingModelFromJson(Map<String, dynamic> json) {
  return _TrendingModel.fromJson(json);
}

/// @nodoc
class _$TrendingModelTearOff {
  const _$TrendingModelTearOff();

  _TrendingModel call({required List<Datum>? data}) {
    return _TrendingModel(
      data: data,
    );
  }

  TrendingModel fromJson(Map<String, Object> json) {
    return TrendingModel.fromJson(json);
  }
}

/// @nodoc
const $TrendingModel = _$TrendingModelTearOff();

/// @nodoc
mixin _$TrendingModel {
  List<Datum>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrendingModelCopyWith<TrendingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrendingModelCopyWith<$Res> {
  factory $TrendingModelCopyWith(
          TrendingModel value, $Res Function(TrendingModel) then) =
      _$TrendingModelCopyWithImpl<$Res>;
  $Res call({List<Datum>? data});
}

/// @nodoc
class _$TrendingModelCopyWithImpl<$Res>
    implements $TrendingModelCopyWith<$Res> {
  _$TrendingModelCopyWithImpl(this._value, this._then);

  final TrendingModel _value;
  // ignore: unused_field
  final $Res Function(TrendingModel) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Datum>?,
    ));
  }
}

/// @nodoc
abstract class _$TrendingModelCopyWith<$Res>
    implements $TrendingModelCopyWith<$Res> {
  factory _$TrendingModelCopyWith(
          _TrendingModel value, $Res Function(_TrendingModel) then) =
      __$TrendingModelCopyWithImpl<$Res>;
  @override
  $Res call({List<Datum>? data});
}

/// @nodoc
class __$TrendingModelCopyWithImpl<$Res>
    extends _$TrendingModelCopyWithImpl<$Res>
    implements _$TrendingModelCopyWith<$Res> {
  __$TrendingModelCopyWithImpl(
      _TrendingModel _value, $Res Function(_TrendingModel) _then)
      : super(_value, (v) => _then(v as _TrendingModel));

  @override
  _TrendingModel get _value => super._value as _TrendingModel;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_TrendingModel(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Datum>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TrendingModel implements _TrendingModel {
  const _$_TrendingModel({required this.data});

  factory _$_TrendingModel.fromJson(Map<String, dynamic> json) =>
      _$_$_TrendingModelFromJson(json);

  @override
  final List<Datum>? data;

  @override
  String toString() {
    return 'TrendingModel(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TrendingModel &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$TrendingModelCopyWith<_TrendingModel> get copyWith =>
      __$TrendingModelCopyWithImpl<_TrendingModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TrendingModelToJson(this);
  }
}

abstract class _TrendingModel implements TrendingModel {
  const factory _TrendingModel({required List<Datum>? data}) = _$_TrendingModel;

  factory _TrendingModel.fromJson(Map<String, dynamic> json) =
      _$_TrendingModel.fromJson;

  @override
  List<Datum>? get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TrendingModelCopyWith<_TrendingModel> get copyWith =>
      throw _privateConstructorUsedError;
}
