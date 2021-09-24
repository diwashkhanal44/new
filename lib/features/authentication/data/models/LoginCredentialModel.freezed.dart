// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'LoginCredentialModel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginCredentialModel _$LoginCredentialModelFromJson(Map<String, dynamic> json) {
  return _LoginCredentialModel.fromJson(json);
}

/// @nodoc
class _$LoginCredentialModelTearOff {
  const _$LoginCredentialModelTearOff();

  _LoginCredentialModel call({required Data? data}) {
    return _LoginCredentialModel(
      data: data,
    );
  }

  LoginCredentialModel fromJson(Map<String, Object> json) {
    return LoginCredentialModel.fromJson(json);
  }
}

/// @nodoc
const $LoginCredentialModel = _$LoginCredentialModelTearOff();

/// @nodoc
mixin _$LoginCredentialModel {
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginCredentialModelCopyWith<LoginCredentialModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginCredentialModelCopyWith<$Res> {
  factory $LoginCredentialModelCopyWith(LoginCredentialModel value,
          $Res Function(LoginCredentialModel) then) =
      _$LoginCredentialModelCopyWithImpl<$Res>;
  $Res call({Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$LoginCredentialModelCopyWithImpl<$Res>
    implements $LoginCredentialModelCopyWith<$Res> {
  _$LoginCredentialModelCopyWithImpl(this._value, this._then);

  final LoginCredentialModel _value;
  // ignore: unused_field
  final $Res Function(LoginCredentialModel) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
  }

  @override
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$LoginCredentialModelCopyWith<$Res>
    implements $LoginCredentialModelCopyWith<$Res> {
  factory _$LoginCredentialModelCopyWith(_LoginCredentialModel value,
          $Res Function(_LoginCredentialModel) then) =
      __$LoginCredentialModelCopyWithImpl<$Res>;
  @override
  $Res call({Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$LoginCredentialModelCopyWithImpl<$Res>
    extends _$LoginCredentialModelCopyWithImpl<$Res>
    implements _$LoginCredentialModelCopyWith<$Res> {
  __$LoginCredentialModelCopyWithImpl(
      _LoginCredentialModel _value, $Res Function(_LoginCredentialModel) _then)
      : super(_value, (v) => _then(v as _LoginCredentialModel));

  @override
  _LoginCredentialModel get _value => super._value as _LoginCredentialModel;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_LoginCredentialModel(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginCredentialModel implements _LoginCredentialModel {
  const _$_LoginCredentialModel({required this.data});

  factory _$_LoginCredentialModel.fromJson(Map<String, dynamic> json) =>
      _$_$_LoginCredentialModelFromJson(json);

  @override
  final Data? data;

  @override
  String toString() {
    return 'LoginCredentialModel(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginCredentialModel &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$LoginCredentialModelCopyWith<_LoginCredentialModel> get copyWith =>
      __$LoginCredentialModelCopyWithImpl<_LoginCredentialModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LoginCredentialModelToJson(this);
  }
}

abstract class _LoginCredentialModel implements LoginCredentialModel {
  const factory _LoginCredentialModel({required Data? data}) =
      _$_LoginCredentialModel;

  factory _LoginCredentialModel.fromJson(Map<String, dynamic> json) =
      _$_LoginCredentialModel.fromJson;

  @override
  Data? get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoginCredentialModelCopyWith<_LoginCredentialModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
class _$DataTearOff {
  const _$DataTearOff();

  _Data call({required String? accessToken}) {
    return _Data(
      accessToken: accessToken,
    );
  }

  Data fromJson(Map<String, Object> json) {
    return Data.fromJson(json);
  }
}

/// @nodoc
const $Data = _$DataTearOff();

/// @nodoc
mixin _$Data {
  String? get accessToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  $Res call({String? accessToken});
}

/// @nodoc
class _$DataCopyWithImpl<$Res> implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  final Data _value;
  // ignore: unused_field
  final $Res Function(Data) _then;

  @override
  $Res call({
    Object? accessToken = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) then) =
      __$DataCopyWithImpl<$Res>;
  @override
  $Res call({String? accessToken});
}

/// @nodoc
class __$DataCopyWithImpl<$Res> extends _$DataCopyWithImpl<$Res>
    implements _$DataCopyWith<$Res> {
  __$DataCopyWithImpl(_Data _value, $Res Function(_Data) _then)
      : super(_value, (v) => _then(v as _Data));

  @override
  _Data get _value => super._value as _Data;

  @override
  $Res call({
    Object? accessToken = freezed,
  }) {
    return _then(_Data(
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Data implements _Data {
  const _$_Data({required this.accessToken});

  factory _$_Data.fromJson(Map<String, dynamic> json) =>
      _$_$_DataFromJson(json);

  @override
  final String? accessToken;

  @override
  String toString() {
    return 'Data(accessToken: $accessToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Data &&
            (identical(other.accessToken, accessToken) ||
                const DeepCollectionEquality()
                    .equals(other.accessToken, accessToken)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(accessToken);

  @JsonKey(ignore: true)
  @override
  _$DataCopyWith<_Data> get copyWith =>
      __$DataCopyWithImpl<_Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DataToJson(this);
  }
}

abstract class _Data implements Data {
  const factory _Data({required String? accessToken}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  String? get accessToken => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DataCopyWith<_Data> get copyWith => throw _privateConstructorUsedError;
}
