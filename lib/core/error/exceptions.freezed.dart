// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'exceptions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ServerExceptionTearOff {
  const _$ServerExceptionTearOff();

  _ServerException call(
      {required String message, String? description, int? statusCode}) {
    return _ServerException(
      message: message,
      description: description,
      statusCode: statusCode,
    );
  }
}

/// @nodoc
const $ServerException = _$ServerExceptionTearOff();

/// @nodoc
mixin _$ServerException {
  String get message => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get statusCode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ServerExceptionCopyWith<ServerException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerExceptionCopyWith<$Res> {
  factory $ServerExceptionCopyWith(
          ServerException value, $Res Function(ServerException) then) =
      _$ServerExceptionCopyWithImpl<$Res>;
  $Res call({String message, String? description, int? statusCode});
}

/// @nodoc
class _$ServerExceptionCopyWithImpl<$Res>
    implements $ServerExceptionCopyWith<$Res> {
  _$ServerExceptionCopyWithImpl(this._value, this._then);

  final ServerException _value;
  // ignore: unused_field
  final $Res Function(ServerException) _then;

  @override
  $Res call({
    Object? message = freezed,
    Object? description = freezed,
    Object? statusCode = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$ServerExceptionCopyWith<$Res>
    implements $ServerExceptionCopyWith<$Res> {
  factory _$ServerExceptionCopyWith(
          _ServerException value, $Res Function(_ServerException) then) =
      __$ServerExceptionCopyWithImpl<$Res>;
  @override
  $Res call({String message, String? description, int? statusCode});
}

/// @nodoc
class __$ServerExceptionCopyWithImpl<$Res>
    extends _$ServerExceptionCopyWithImpl<$Res>
    implements _$ServerExceptionCopyWith<$Res> {
  __$ServerExceptionCopyWithImpl(
      _ServerException _value, $Res Function(_ServerException) _then)
      : super(_value, (v) => _then(v as _ServerException));

  @override
  _ServerException get _value => super._value as _ServerException;

  @override
  $Res call({
    Object? message = freezed,
    Object? description = freezed,
    Object? statusCode = freezed,
  }) {
    return _then(_ServerException(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_ServerException implements _ServerException {
  const _$_ServerException(
      {required this.message, this.description, this.statusCode});

  @override
  final String message;
  @override
  final String? description;
  @override
  final int? statusCode;

  @override
  String toString() {
    return 'ServerException(message: $message, description: $description, statusCode: $statusCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ServerException &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.statusCode, statusCode) ||
                const DeepCollectionEquality()
                    .equals(other.statusCode, statusCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(statusCode);

  @JsonKey(ignore: true)
  @override
  _$ServerExceptionCopyWith<_ServerException> get copyWith =>
      __$ServerExceptionCopyWithImpl<_ServerException>(this, _$identity);
}

abstract class _ServerException implements ServerException {
  const factory _ServerException(
      {required String message,
      String? description,
      int? statusCode}) = _$_ServerException;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  int? get statusCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ServerExceptionCopyWith<_ServerException> get copyWith =>
      throw _privateConstructorUsedError;
}
