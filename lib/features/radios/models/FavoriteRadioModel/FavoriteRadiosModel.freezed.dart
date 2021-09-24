// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'FavoriteRadiosModel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FavoriteRadiosModel _$FavoriteRadiosModelFromJson(Map<String, dynamic> json) {
  return _FavoriteRadiosModel.fromJson(json);
}

/// @nodoc
class _$FavoriteRadiosModelTearOff {
  const _$FavoriteRadiosModelTearOff();

  _FavoriteRadiosModel call({required List<Datum>? data}) {
    return _FavoriteRadiosModel(
      data: data,
    );
  }

  FavoriteRadiosModel fromJson(Map<String, Object> json) {
    return FavoriteRadiosModel.fromJson(json);
  }
}

/// @nodoc
const $FavoriteRadiosModel = _$FavoriteRadiosModelTearOff();

/// @nodoc
mixin _$FavoriteRadiosModel {
  List<Datum>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavoriteRadiosModelCopyWith<FavoriteRadiosModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteRadiosModelCopyWith<$Res> {
  factory $FavoriteRadiosModelCopyWith(
          FavoriteRadiosModel value, $Res Function(FavoriteRadiosModel) then) =
      _$FavoriteRadiosModelCopyWithImpl<$Res>;
  $Res call({List<Datum>? data});
}

/// @nodoc
class _$FavoriteRadiosModelCopyWithImpl<$Res>
    implements $FavoriteRadiosModelCopyWith<$Res> {
  _$FavoriteRadiosModelCopyWithImpl(this._value, this._then);

  final FavoriteRadiosModel _value;
  // ignore: unused_field
  final $Res Function(FavoriteRadiosModel) _then;

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
abstract class _$FavoriteRadiosModelCopyWith<$Res>
    implements $FavoriteRadiosModelCopyWith<$Res> {
  factory _$FavoriteRadiosModelCopyWith(_FavoriteRadiosModel value,
          $Res Function(_FavoriteRadiosModel) then) =
      __$FavoriteRadiosModelCopyWithImpl<$Res>;
  @override
  $Res call({List<Datum>? data});
}

/// @nodoc
class __$FavoriteRadiosModelCopyWithImpl<$Res>
    extends _$FavoriteRadiosModelCopyWithImpl<$Res>
    implements _$FavoriteRadiosModelCopyWith<$Res> {
  __$FavoriteRadiosModelCopyWithImpl(
      _FavoriteRadiosModel _value, $Res Function(_FavoriteRadiosModel) _then)
      : super(_value, (v) => _then(v as _FavoriteRadiosModel));

  @override
  _FavoriteRadiosModel get _value => super._value as _FavoriteRadiosModel;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_FavoriteRadiosModel(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Datum>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FavoriteRadiosModel implements _FavoriteRadiosModel {
  const _$_FavoriteRadiosModel({required this.data});

  factory _$_FavoriteRadiosModel.fromJson(Map<String, dynamic> json) =>
      _$_$_FavoriteRadiosModelFromJson(json);

  @override
  final List<Datum>? data;

  @override
  String toString() {
    return 'FavoriteRadiosModel(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FavoriteRadiosModel &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$FavoriteRadiosModelCopyWith<_FavoriteRadiosModel> get copyWith =>
      __$FavoriteRadiosModelCopyWithImpl<_FavoriteRadiosModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FavoriteRadiosModelToJson(this);
  }
}

abstract class _FavoriteRadiosModel implements FavoriteRadiosModel {
  const factory _FavoriteRadiosModel({required List<Datum>? data}) =
      _$_FavoriteRadiosModel;

  factory _FavoriteRadiosModel.fromJson(Map<String, dynamic> json) =
      _$_FavoriteRadiosModel.fromJson;

  @override
  List<Datum>? get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FavoriteRadiosModelCopyWith<_FavoriteRadiosModel> get copyWith =>
      throw _privateConstructorUsedError;
}
