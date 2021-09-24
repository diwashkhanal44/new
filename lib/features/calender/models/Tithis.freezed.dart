// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'Tithis.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Tithis _$TithisFromJson(Map<String, dynamic> json) {
  return _Tithis.fromJson(json);
}

/// @nodoc
class _$TithisTearOff {
  const _$TithisTearOff();

  _Tithis call({required List<Datum>? data}) {
    return _Tithis(
      data: data,
    );
  }

  Tithis fromJson(Map<String, Object> json) {
    return Tithis.fromJson(json);
  }
}

/// @nodoc
const $Tithis = _$TithisTearOff();

/// @nodoc
mixin _$Tithis {
  List<Datum>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TithisCopyWith<Tithis> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TithisCopyWith<$Res> {
  factory $TithisCopyWith(Tithis value, $Res Function(Tithis) then) =
      _$TithisCopyWithImpl<$Res>;
  $Res call({List<Datum>? data});
}

/// @nodoc
class _$TithisCopyWithImpl<$Res> implements $TithisCopyWith<$Res> {
  _$TithisCopyWithImpl(this._value, this._then);

  final Tithis _value;
  // ignore: unused_field
  final $Res Function(Tithis) _then;

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
abstract class _$TithisCopyWith<$Res> implements $TithisCopyWith<$Res> {
  factory _$TithisCopyWith(_Tithis value, $Res Function(_Tithis) then) =
      __$TithisCopyWithImpl<$Res>;
  @override
  $Res call({List<Datum>? data});
}

/// @nodoc
class __$TithisCopyWithImpl<$Res> extends _$TithisCopyWithImpl<$Res>
    implements _$TithisCopyWith<$Res> {
  __$TithisCopyWithImpl(_Tithis _value, $Res Function(_Tithis) _then)
      : super(_value, (v) => _then(v as _Tithis));

  @override
  _Tithis get _value => super._value as _Tithis;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_Tithis(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Datum>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Tithis implements _Tithis {
  const _$_Tithis({required this.data});

  factory _$_Tithis.fromJson(Map<String, dynamic> json) =>
      _$_$_TithisFromJson(json);

  @override
  final List<Datum>? data;

  @override
  String toString() {
    return 'Tithis(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Tithis &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$TithisCopyWith<_Tithis> get copyWith =>
      __$TithisCopyWithImpl<_Tithis>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TithisToJson(this);
  }
}

abstract class _Tithis implements Tithis {
  const factory _Tithis({required List<Datum>? data}) = _$_Tithis;

  factory _Tithis.fromJson(Map<String, dynamic> json) = _$_Tithis.fromJson;

  @override
  List<Datum>? get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TithisCopyWith<_Tithis> get copyWith => throw _privateConstructorUsedError;
}

Datum _$DatumFromJson(Map<String, dynamic> json) {
  return _Datum.fromJson(json);
}

/// @nodoc
class _$DatumTearOff {
  const _$DatumTearOff();

  _Datum call(
      {required String? date,
      required int? year,
      required int? month,
      required int? day,
      required String? lunar_day}) {
    return _Datum(
      date: date,
      year: year,
      month: month,
      day: day,
      lunar_day: lunar_day,
    );
  }

  Datum fromJson(Map<String, Object> json) {
    return Datum.fromJson(json);
  }
}

/// @nodoc
const $Datum = _$DatumTearOff();

/// @nodoc
mixin _$Datum {
  String? get date => throw _privateConstructorUsedError;
  int? get year => throw _privateConstructorUsedError;
  int? get month => throw _privateConstructorUsedError;
  int? get day => throw _privateConstructorUsedError;
  String? get lunar_day => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DatumCopyWith<Datum> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatumCopyWith<$Res> {
  factory $DatumCopyWith(Datum value, $Res Function(Datum) then) =
      _$DatumCopyWithImpl<$Res>;
  $Res call({String? date, int? year, int? month, int? day, String? lunar_day});
}

/// @nodoc
class _$DatumCopyWithImpl<$Res> implements $DatumCopyWith<$Res> {
  _$DatumCopyWithImpl(this._value, this._then);

  final Datum _value;
  // ignore: unused_field
  final $Res Function(Datum) _then;

  @override
  $Res call({
    Object? date = freezed,
    Object? year = freezed,
    Object? month = freezed,
    Object? day = freezed,
    Object? lunar_day = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      year: year == freezed
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
      month: month == freezed
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int?,
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int?,
      lunar_day: lunar_day == freezed
          ? _value.lunar_day
          : lunar_day // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$DatumCopyWith<$Res> implements $DatumCopyWith<$Res> {
  factory _$DatumCopyWith(_Datum value, $Res Function(_Datum) then) =
      __$DatumCopyWithImpl<$Res>;
  @override
  $Res call({String? date, int? year, int? month, int? day, String? lunar_day});
}

/// @nodoc
class __$DatumCopyWithImpl<$Res> extends _$DatumCopyWithImpl<$Res>
    implements _$DatumCopyWith<$Res> {
  __$DatumCopyWithImpl(_Datum _value, $Res Function(_Datum) _then)
      : super(_value, (v) => _then(v as _Datum));

  @override
  _Datum get _value => super._value as _Datum;

  @override
  $Res call({
    Object? date = freezed,
    Object? year = freezed,
    Object? month = freezed,
    Object? day = freezed,
    Object? lunar_day = freezed,
  }) {
    return _then(_Datum(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      year: year == freezed
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
      month: month == freezed
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int?,
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int?,
      lunar_day: lunar_day == freezed
          ? _value.lunar_day
          : lunar_day // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Datum implements _Datum {
  const _$_Datum(
      {required this.date,
      required this.year,
      required this.month,
      required this.day,
      required this.lunar_day});

  factory _$_Datum.fromJson(Map<String, dynamic> json) =>
      _$_$_DatumFromJson(json);

  @override
  final String? date;
  @override
  final int? year;
  @override
  final int? month;
  @override
  final int? day;
  @override
  final String? lunar_day;

  @override
  String toString() {
    return 'Datum(date: $date, year: $year, month: $month, day: $day, lunar_day: $lunar_day)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Datum &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.year, year) ||
                const DeepCollectionEquality().equals(other.year, year)) &&
            (identical(other.month, month) ||
                const DeepCollectionEquality().equals(other.month, month)) &&
            (identical(other.day, day) ||
                const DeepCollectionEquality().equals(other.day, day)) &&
            (identical(other.lunar_day, lunar_day) ||
                const DeepCollectionEquality()
                    .equals(other.lunar_day, lunar_day)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(year) ^
      const DeepCollectionEquality().hash(month) ^
      const DeepCollectionEquality().hash(day) ^
      const DeepCollectionEquality().hash(lunar_day);

  @JsonKey(ignore: true)
  @override
  _$DatumCopyWith<_Datum> get copyWith =>
      __$DatumCopyWithImpl<_Datum>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DatumToJson(this);
  }
}

abstract class _Datum implements Datum {
  const factory _Datum(
      {required String? date,
      required int? year,
      required int? month,
      required int? day,
      required String? lunar_day}) = _$_Datum;

  factory _Datum.fromJson(Map<String, dynamic> json) = _$_Datum.fromJson;

  @override
  String? get date => throw _privateConstructorUsedError;
  @override
  int? get year => throw _privateConstructorUsedError;
  @override
  int? get month => throw _privateConstructorUsedError;
  @override
  int? get day => throw _privateConstructorUsedError;
  @override
  String? get lunar_day => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DatumCopyWith<_Datum> get copyWith => throw _privateConstructorUsedError;
}
