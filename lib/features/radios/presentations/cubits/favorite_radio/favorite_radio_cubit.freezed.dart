// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'favorite_radio_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FavoriteRadioStateTearOff {
  const _$FavoriteRadioStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Loaded loaded({required FavoriteRadiosModel favoriteRadiosModel}) {
    return _Loaded(
      favoriteRadiosModel: favoriteRadiosModel,
    );
  }
}

/// @nodoc
const $FavoriteRadioState = _$FavoriteRadioStateTearOff();

/// @nodoc
mixin _$FavoriteRadioState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(FavoriteRadiosModel favoriteRadiosModel) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(FavoriteRadiosModel favoriteRadiosModel)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteRadioStateCopyWith<$Res> {
  factory $FavoriteRadioStateCopyWith(
          FavoriteRadioState value, $Res Function(FavoriteRadioState) then) =
      _$FavoriteRadioStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FavoriteRadioStateCopyWithImpl<$Res>
    implements $FavoriteRadioStateCopyWith<$Res> {
  _$FavoriteRadioStateCopyWithImpl(this._value, this._then);

  final FavoriteRadioState _value;
  // ignore: unused_field
  final $Res Function(FavoriteRadioState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$FavoriteRadioStateCopyWithImpl<$Res>
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
    return 'FavoriteRadioState.initial()';
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
    required TResult Function(FavoriteRadiosModel favoriteRadiosModel) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(FavoriteRadiosModel favoriteRadiosModel)? loaded,
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
    required TResult Function(_Loaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FavoriteRadioState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({FavoriteRadiosModel favoriteRadiosModel});

  $FavoriteRadiosModelCopyWith<$Res> get favoriteRadiosModel;
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> extends _$FavoriteRadioStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object? favoriteRadiosModel = freezed,
  }) {
    return _then(_Loaded(
      favoriteRadiosModel: favoriteRadiosModel == freezed
          ? _value.favoriteRadiosModel
          : favoriteRadiosModel // ignore: cast_nullable_to_non_nullable
              as FavoriteRadiosModel,
    ));
  }

  @override
  $FavoriteRadiosModelCopyWith<$Res> get favoriteRadiosModel {
    return $FavoriteRadiosModelCopyWith<$Res>(_value.favoriteRadiosModel,
        (value) {
      return _then(_value.copyWith(favoriteRadiosModel: value));
    });
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded({required this.favoriteRadiosModel});

  @override
  final FavoriteRadiosModel favoriteRadiosModel;

  @override
  String toString() {
    return 'FavoriteRadioState.loaded(favoriteRadiosModel: $favoriteRadiosModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loaded &&
            (identical(other.favoriteRadiosModel, favoriteRadiosModel) ||
                const DeepCollectionEquality()
                    .equals(other.favoriteRadiosModel, favoriteRadiosModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(favoriteRadiosModel);

  @JsonKey(ignore: true)
  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(FavoriteRadiosModel favoriteRadiosModel) loaded,
  }) {
    return loaded(favoriteRadiosModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(FavoriteRadiosModel favoriteRadiosModel)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(favoriteRadiosModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements FavoriteRadioState {
  const factory _Loaded({required FavoriteRadiosModel favoriteRadiosModel}) =
      _$_Loaded;

  FavoriteRadiosModel get favoriteRadiosModel =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadedCopyWith<_Loaded> get copyWith => throw _privateConstructorUsedError;
}
