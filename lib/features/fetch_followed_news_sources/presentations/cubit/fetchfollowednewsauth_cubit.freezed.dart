// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'fetchfollowednewsauth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FetchfollowednewsauthStateTearOff {
  const _$FetchfollowednewsauthStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Fetched fetched({required NewsSourcesFollowed newsSourcesFollowed}) {
    return _Fetched(
      newsSourcesFollowed: newsSourcesFollowed,
    );
  }

  _Failure failed({required String failrueMessage}) {
    return _Failure(
      failrueMessage: failrueMessage,
    );
  }
}

/// @nodoc
const $FetchfollowednewsauthState = _$FetchfollowednewsauthStateTearOff();

/// @nodoc
mixin _$FetchfollowednewsauthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(NewsSourcesFollowed newsSourcesFollowed) fetched,
    required TResult Function(String failrueMessage) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(NewsSourcesFollowed newsSourcesFollowed)? fetched,
    TResult Function(String failrueMessage)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Fetched value) fetched,
    required TResult Function(_Failure value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Fetched value)? fetched,
    TResult Function(_Failure value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchfollowednewsauthStateCopyWith<$Res> {
  factory $FetchfollowednewsauthStateCopyWith(FetchfollowednewsauthState value,
          $Res Function(FetchfollowednewsauthState) then) =
      _$FetchfollowednewsauthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FetchfollowednewsauthStateCopyWithImpl<$Res>
    implements $FetchfollowednewsauthStateCopyWith<$Res> {
  _$FetchfollowednewsauthStateCopyWithImpl(this._value, this._then);

  final FetchfollowednewsauthState _value;
  // ignore: unused_field
  final $Res Function(FetchfollowednewsauthState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$FetchfollowednewsauthStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'FetchfollowednewsauthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(NewsSourcesFollowed newsSourcesFollowed) fetched,
    required TResult Function(String failrueMessage) failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(NewsSourcesFollowed newsSourcesFollowed)? fetched,
    TResult Function(String failrueMessage)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Fetched value) fetched,
    required TResult Function(_Failure value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Fetched value)? fetched,
    TResult Function(_Failure value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FetchfollowednewsauthState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$FetchedCopyWith<$Res> {
  factory _$FetchedCopyWith(_Fetched value, $Res Function(_Fetched) then) =
      __$FetchedCopyWithImpl<$Res>;
  $Res call({NewsSourcesFollowed newsSourcesFollowed});

  $NewsSourcesFollowedCopyWith<$Res> get newsSourcesFollowed;
}

/// @nodoc
class __$FetchedCopyWithImpl<$Res>
    extends _$FetchfollowednewsauthStateCopyWithImpl<$Res>
    implements _$FetchedCopyWith<$Res> {
  __$FetchedCopyWithImpl(_Fetched _value, $Res Function(_Fetched) _then)
      : super(_value, (v) => _then(v as _Fetched));

  @override
  _Fetched get _value => super._value as _Fetched;

  @override
  $Res call({
    Object? newsSourcesFollowed = freezed,
  }) {
    return _then(_Fetched(
      newsSourcesFollowed: newsSourcesFollowed == freezed
          ? _value.newsSourcesFollowed
          : newsSourcesFollowed // ignore: cast_nullable_to_non_nullable
              as NewsSourcesFollowed,
    ));
  }

  @override
  $NewsSourcesFollowedCopyWith<$Res> get newsSourcesFollowed {
    return $NewsSourcesFollowedCopyWith<$Res>(_value.newsSourcesFollowed,
        (value) {
      return _then(_value.copyWith(newsSourcesFollowed: value));
    });
  }
}

/// @nodoc

class _$_Fetched implements _Fetched {
  const _$_Fetched({required this.newsSourcesFollowed});

  @override
  final NewsSourcesFollowed newsSourcesFollowed;

  @override
  String toString() {
    return 'FetchfollowednewsauthState.fetched(newsSourcesFollowed: $newsSourcesFollowed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Fetched &&
            (identical(other.newsSourcesFollowed, newsSourcesFollowed) ||
                const DeepCollectionEquality()
                    .equals(other.newsSourcesFollowed, newsSourcesFollowed)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(newsSourcesFollowed);

  @JsonKey(ignore: true)
  @override
  _$FetchedCopyWith<_Fetched> get copyWith =>
      __$FetchedCopyWithImpl<_Fetched>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(NewsSourcesFollowed newsSourcesFollowed) fetched,
    required TResult Function(String failrueMessage) failed,
  }) {
    return fetched(newsSourcesFollowed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(NewsSourcesFollowed newsSourcesFollowed)? fetched,
    TResult Function(String failrueMessage)? failed,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(newsSourcesFollowed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Fetched value) fetched,
    required TResult Function(_Failure value) failed,
  }) {
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Fetched value)? fetched,
    TResult Function(_Failure value)? failed,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(this);
    }
    return orElse();
  }
}

abstract class _Fetched implements FetchfollowednewsauthState {
  const factory _Fetched({required NewsSourcesFollowed newsSourcesFollowed}) =
      _$_Fetched;

  NewsSourcesFollowed get newsSourcesFollowed =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FetchedCopyWith<_Fetched> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
  $Res call({String failrueMessage});
}

/// @nodoc
class __$FailureCopyWithImpl<$Res>
    extends _$FetchfollowednewsauthStateCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(_Failure _value, $Res Function(_Failure) _then)
      : super(_value, (v) => _then(v as _Failure));

  @override
  _Failure get _value => super._value as _Failure;

  @override
  $Res call({
    Object? failrueMessage = freezed,
  }) {
    return _then(_Failure(
      failrueMessage: failrueMessage == freezed
          ? _value.failrueMessage
          : failrueMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Failure implements _Failure {
  const _$_Failure({required this.failrueMessage});

  @override
  final String failrueMessage;

  @override
  String toString() {
    return 'FetchfollowednewsauthState.failed(failrueMessage: $failrueMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Failure &&
            (identical(other.failrueMessage, failrueMessage) ||
                const DeepCollectionEquality()
                    .equals(other.failrueMessage, failrueMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failrueMessage);

  @JsonKey(ignore: true)
  @override
  _$FailureCopyWith<_Failure> get copyWith =>
      __$FailureCopyWithImpl<_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(NewsSourcesFollowed newsSourcesFollowed) fetched,
    required TResult Function(String failrueMessage) failed,
  }) {
    return failed(failrueMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(NewsSourcesFollowed newsSourcesFollowed)? fetched,
    TResult Function(String failrueMessage)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(failrueMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Fetched value) fetched,
    required TResult Function(_Failure value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Fetched value)? fetched,
    TResult Function(_Failure value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failure implements FetchfollowednewsauthState {
  const factory _Failure({required String failrueMessage}) = _$_Failure;

  String get failrueMessage => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FailureCopyWith<_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}
