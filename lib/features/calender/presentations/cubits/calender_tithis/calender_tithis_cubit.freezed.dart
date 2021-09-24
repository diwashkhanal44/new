// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'calender_tithis_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CalenderTithisStateTearOff {
  const _$CalenderTithisStateTearOff();

  _Initial initial({required NepaliDate selectedDate}) {
    return _Initial(
      selectedDate: selectedDate,
    );
  }

  _Loading loading({required NepaliDate selectedDate}) {
    return _Loading(
      selectedDate: selectedDate,
    );
  }

  _Loaded loaded(
      {required Tithis? tithis,
      required HolidaysOrEvents? holidaysOrEvents,
      required NepaliDate selectedDate}) {
    return _Loaded(
      tithis: tithis,
      holidaysOrEvents: holidaysOrEvents,
      selectedDate: selectedDate,
    );
  }

  _Failed failed(
      {required NepaliDate selectedDate, required String failureMessage}) {
    return _Failed(
      selectedDate: selectedDate,
      failureMessage: failureMessage,
    );
  }
}

/// @nodoc
const $CalenderTithisState = _$CalenderTithisStateTearOff();

/// @nodoc
mixin _$CalenderTithisState {
  NepaliDate get selectedDate => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NepaliDate selectedDate) initial,
    required TResult Function(NepaliDate selectedDate) loading,
    required TResult Function(Tithis? tithis,
            HolidaysOrEvents? holidaysOrEvents, NepaliDate selectedDate)
        loaded,
    required TResult Function(NepaliDate selectedDate, String failureMessage)
        failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NepaliDate selectedDate)? initial,
    TResult Function(NepaliDate selectedDate)? loading,
    TResult Function(Tithis? tithis, HolidaysOrEvents? holidaysOrEvents,
            NepaliDate selectedDate)?
        loaded,
    TResult Function(NepaliDate selectedDate, String failureMessage)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CalenderTithisStateCopyWith<CalenderTithisState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalenderTithisStateCopyWith<$Res> {
  factory $CalenderTithisStateCopyWith(
          CalenderTithisState value, $Res Function(CalenderTithisState) then) =
      _$CalenderTithisStateCopyWithImpl<$Res>;
  $Res call({NepaliDate selectedDate});
}

/// @nodoc
class _$CalenderTithisStateCopyWithImpl<$Res>
    implements $CalenderTithisStateCopyWith<$Res> {
  _$CalenderTithisStateCopyWithImpl(this._value, this._then);

  final CalenderTithisState _value;
  // ignore: unused_field
  final $Res Function(CalenderTithisState) _then;

  @override
  $Res call({
    Object? selectedDate = freezed,
  }) {
    return _then(_value.copyWith(
      selectedDate: selectedDate == freezed
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as NepaliDate,
    ));
  }
}

/// @nodoc
abstract class _$InitialCopyWith<$Res>
    implements $CalenderTithisStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call({NepaliDate selectedDate});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$CalenderTithisStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? selectedDate = freezed,
  }) {
    return _then(_Initial(
      selectedDate: selectedDate == freezed
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as NepaliDate,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({required this.selectedDate});

  @override
  final NepaliDate selectedDate;

  @override
  String toString() {
    return 'CalenderTithisState.initial(selectedDate: $selectedDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initial &&
            (identical(other.selectedDate, selectedDate) ||
                const DeepCollectionEquality()
                    .equals(other.selectedDate, selectedDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(selectedDate);

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NepaliDate selectedDate) initial,
    required TResult Function(NepaliDate selectedDate) loading,
    required TResult Function(Tithis? tithis,
            HolidaysOrEvents? holidaysOrEvents, NepaliDate selectedDate)
        loaded,
    required TResult Function(NepaliDate selectedDate, String failureMessage)
        failed,
  }) {
    return initial(selectedDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NepaliDate selectedDate)? initial,
    TResult Function(NepaliDate selectedDate)? loading,
    TResult Function(Tithis? tithis, HolidaysOrEvents? holidaysOrEvents,
            NepaliDate selectedDate)?
        loaded,
    TResult Function(NepaliDate selectedDate, String failureMessage)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(selectedDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CalenderTithisState {
  const factory _Initial({required NepaliDate selectedDate}) = _$_Initial;

  @override
  NepaliDate get selectedDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res>
    implements $CalenderTithisStateCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
  @override
  $Res call({NepaliDate selectedDate});
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res>
    extends _$CalenderTithisStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;

  @override
  $Res call({
    Object? selectedDate = freezed,
  }) {
    return _then(_Loading(
      selectedDate: selectedDate == freezed
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as NepaliDate,
    ));
  }
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading({required this.selectedDate});

  @override
  final NepaliDate selectedDate;

  @override
  String toString() {
    return 'CalenderTithisState.loading(selectedDate: $selectedDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loading &&
            (identical(other.selectedDate, selectedDate) ||
                const DeepCollectionEquality()
                    .equals(other.selectedDate, selectedDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(selectedDate);

  @JsonKey(ignore: true)
  @override
  _$LoadingCopyWith<_Loading> get copyWith =>
      __$LoadingCopyWithImpl<_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NepaliDate selectedDate) initial,
    required TResult Function(NepaliDate selectedDate) loading,
    required TResult Function(Tithis? tithis,
            HolidaysOrEvents? holidaysOrEvents, NepaliDate selectedDate)
        loaded,
    required TResult Function(NepaliDate selectedDate, String failureMessage)
        failed,
  }) {
    return loading(selectedDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NepaliDate selectedDate)? initial,
    TResult Function(NepaliDate selectedDate)? loading,
    TResult Function(Tithis? tithis, HolidaysOrEvents? holidaysOrEvents,
            NepaliDate selectedDate)?
        loaded,
    TResult Function(NepaliDate selectedDate, String failureMessage)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(selectedDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failed value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements CalenderTithisState {
  const factory _Loading({required NepaliDate selectedDate}) = _$_Loading;

  @override
  NepaliDate get selectedDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoadingCopyWith<_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res>
    implements $CalenderTithisStateCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  @override
  $Res call(
      {Tithis? tithis,
      HolidaysOrEvents? holidaysOrEvents,
      NepaliDate selectedDate});

  $TithisCopyWith<$Res>? get tithis;
  $HolidaysOrEventsCopyWith<$Res>? get holidaysOrEvents;
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    extends _$CalenderTithisStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object? tithis = freezed,
    Object? holidaysOrEvents = freezed,
    Object? selectedDate = freezed,
  }) {
    return _then(_Loaded(
      tithis: tithis == freezed
          ? _value.tithis
          : tithis // ignore: cast_nullable_to_non_nullable
              as Tithis?,
      holidaysOrEvents: holidaysOrEvents == freezed
          ? _value.holidaysOrEvents
          : holidaysOrEvents // ignore: cast_nullable_to_non_nullable
              as HolidaysOrEvents?,
      selectedDate: selectedDate == freezed
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as NepaliDate,
    ));
  }

  @override
  $TithisCopyWith<$Res>? get tithis {
    if (_value.tithis == null) {
      return null;
    }

    return $TithisCopyWith<$Res>(_value.tithis!, (value) {
      return _then(_value.copyWith(tithis: value));
    });
  }

  @override
  $HolidaysOrEventsCopyWith<$Res>? get holidaysOrEvents {
    if (_value.holidaysOrEvents == null) {
      return null;
    }

    return $HolidaysOrEventsCopyWith<$Res>(_value.holidaysOrEvents!, (value) {
      return _then(_value.copyWith(holidaysOrEvents: value));
    });
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(
      {required this.tithis,
      required this.holidaysOrEvents,
      required this.selectedDate});

  @override
  final Tithis? tithis;
  @override
  final HolidaysOrEvents? holidaysOrEvents;
  @override
  final NepaliDate selectedDate;

  @override
  String toString() {
    return 'CalenderTithisState.loaded(tithis: $tithis, holidaysOrEvents: $holidaysOrEvents, selectedDate: $selectedDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loaded &&
            (identical(other.tithis, tithis) ||
                const DeepCollectionEquality().equals(other.tithis, tithis)) &&
            (identical(other.holidaysOrEvents, holidaysOrEvents) ||
                const DeepCollectionEquality()
                    .equals(other.holidaysOrEvents, holidaysOrEvents)) &&
            (identical(other.selectedDate, selectedDate) ||
                const DeepCollectionEquality()
                    .equals(other.selectedDate, selectedDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(tithis) ^
      const DeepCollectionEquality().hash(holidaysOrEvents) ^
      const DeepCollectionEquality().hash(selectedDate);

  @JsonKey(ignore: true)
  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NepaliDate selectedDate) initial,
    required TResult Function(NepaliDate selectedDate) loading,
    required TResult Function(Tithis? tithis,
            HolidaysOrEvents? holidaysOrEvents, NepaliDate selectedDate)
        loaded,
    required TResult Function(NepaliDate selectedDate, String failureMessage)
        failed,
  }) {
    return loaded(tithis, holidaysOrEvents, selectedDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NepaliDate selectedDate)? initial,
    TResult Function(NepaliDate selectedDate)? loading,
    TResult Function(Tithis? tithis, HolidaysOrEvents? holidaysOrEvents,
            NepaliDate selectedDate)?
        loaded,
    TResult Function(NepaliDate selectedDate, String failureMessage)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(tithis, holidaysOrEvents, selectedDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failed value) failed,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements CalenderTithisState {
  const factory _Loaded(
      {required Tithis? tithis,
      required HolidaysOrEvents? holidaysOrEvents,
      required NepaliDate selectedDate}) = _$_Loaded;

  Tithis? get tithis => throw _privateConstructorUsedError;
  HolidaysOrEvents? get holidaysOrEvents => throw _privateConstructorUsedError;
  @override
  NepaliDate get selectedDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoadedCopyWith<_Loaded> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FailedCopyWith<$Res>
    implements $CalenderTithisStateCopyWith<$Res> {
  factory _$FailedCopyWith(_Failed value, $Res Function(_Failed) then) =
      __$FailedCopyWithImpl<$Res>;
  @override
  $Res call({NepaliDate selectedDate, String failureMessage});
}

/// @nodoc
class __$FailedCopyWithImpl<$Res>
    extends _$CalenderTithisStateCopyWithImpl<$Res>
    implements _$FailedCopyWith<$Res> {
  __$FailedCopyWithImpl(_Failed _value, $Res Function(_Failed) _then)
      : super(_value, (v) => _then(v as _Failed));

  @override
  _Failed get _value => super._value as _Failed;

  @override
  $Res call({
    Object? selectedDate = freezed,
    Object? failureMessage = freezed,
  }) {
    return _then(_Failed(
      selectedDate: selectedDate == freezed
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as NepaliDate,
      failureMessage: failureMessage == freezed
          ? _value.failureMessage
          : failureMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Failed implements _Failed {
  const _$_Failed({required this.selectedDate, required this.failureMessage});

  @override
  final NepaliDate selectedDate;
  @override
  final String failureMessage;

  @override
  String toString() {
    return 'CalenderTithisState.failed(selectedDate: $selectedDate, failureMessage: $failureMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Failed &&
            (identical(other.selectedDate, selectedDate) ||
                const DeepCollectionEquality()
                    .equals(other.selectedDate, selectedDate)) &&
            (identical(other.failureMessage, failureMessage) ||
                const DeepCollectionEquality()
                    .equals(other.failureMessage, failureMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(selectedDate) ^
      const DeepCollectionEquality().hash(failureMessage);

  @JsonKey(ignore: true)
  @override
  _$FailedCopyWith<_Failed> get copyWith =>
      __$FailedCopyWithImpl<_Failed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NepaliDate selectedDate) initial,
    required TResult Function(NepaliDate selectedDate) loading,
    required TResult Function(Tithis? tithis,
            HolidaysOrEvents? holidaysOrEvents, NepaliDate selectedDate)
        loaded,
    required TResult Function(NepaliDate selectedDate, String failureMessage)
        failed,
  }) {
    return failed(selectedDate, failureMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NepaliDate selectedDate)? initial,
    TResult Function(NepaliDate selectedDate)? loading,
    TResult Function(Tithis? tithis, HolidaysOrEvents? holidaysOrEvents,
            NepaliDate selectedDate)?
        loaded,
    TResult Function(NepaliDate selectedDate, String failureMessage)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(selectedDate, failureMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements CalenderTithisState {
  const factory _Failed(
      {required NepaliDate selectedDate,
      required String failureMessage}) = _$_Failed;

  @override
  NepaliDate get selectedDate => throw _privateConstructorUsedError;
  String get failureMessage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FailedCopyWith<_Failed> get copyWith => throw _privateConstructorUsedError;
}
