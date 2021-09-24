// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'HolidaysOrEvents.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HolidaysOrEvents _$HolidaysOrEventsFromJson(Map<String, dynamic> json) {
  return _HolidaysOrEvents.fromJson(json);
}

/// @nodoc
class _$HolidaysOrEventsTearOff {
  const _$HolidaysOrEventsTearOff();

  _HolidaysOrEvents call({required List<Datum>? data}) {
    return _HolidaysOrEvents(
      data: data,
    );
  }

  HolidaysOrEvents fromJson(Map<String, Object> json) {
    return HolidaysOrEvents.fromJson(json);
  }
}

/// @nodoc
const $HolidaysOrEvents = _$HolidaysOrEventsTearOff();

/// @nodoc
mixin _$HolidaysOrEvents {
  List<Datum>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HolidaysOrEventsCopyWith<HolidaysOrEvents> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HolidaysOrEventsCopyWith<$Res> {
  factory $HolidaysOrEventsCopyWith(
          HolidaysOrEvents value, $Res Function(HolidaysOrEvents) then) =
      _$HolidaysOrEventsCopyWithImpl<$Res>;
  $Res call({List<Datum>? data});
}

/// @nodoc
class _$HolidaysOrEventsCopyWithImpl<$Res>
    implements $HolidaysOrEventsCopyWith<$Res> {
  _$HolidaysOrEventsCopyWithImpl(this._value, this._then);

  final HolidaysOrEvents _value;
  // ignore: unused_field
  final $Res Function(HolidaysOrEvents) _then;

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
abstract class _$HolidaysOrEventsCopyWith<$Res>
    implements $HolidaysOrEventsCopyWith<$Res> {
  factory _$HolidaysOrEventsCopyWith(
          _HolidaysOrEvents value, $Res Function(_HolidaysOrEvents) then) =
      __$HolidaysOrEventsCopyWithImpl<$Res>;
  @override
  $Res call({List<Datum>? data});
}

/// @nodoc
class __$HolidaysOrEventsCopyWithImpl<$Res>
    extends _$HolidaysOrEventsCopyWithImpl<$Res>
    implements _$HolidaysOrEventsCopyWith<$Res> {
  __$HolidaysOrEventsCopyWithImpl(
      _HolidaysOrEvents _value, $Res Function(_HolidaysOrEvents) _then)
      : super(_value, (v) => _then(v as _HolidaysOrEvents));

  @override
  _HolidaysOrEvents get _value => super._value as _HolidaysOrEvents;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_HolidaysOrEvents(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Datum>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HolidaysOrEvents implements _HolidaysOrEvents {
  const _$_HolidaysOrEvents({required this.data});

  factory _$_HolidaysOrEvents.fromJson(Map<String, dynamic> json) =>
      _$_$_HolidaysOrEventsFromJson(json);

  @override
  final List<Datum>? data;

  @override
  String toString() {
    return 'HolidaysOrEvents(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HolidaysOrEvents &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$HolidaysOrEventsCopyWith<_HolidaysOrEvents> get copyWith =>
      __$HolidaysOrEventsCopyWithImpl<_HolidaysOrEvents>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_HolidaysOrEventsToJson(this);
  }
}

abstract class _HolidaysOrEvents implements HolidaysOrEvents {
  const factory _HolidaysOrEvents({required List<Datum>? data}) =
      _$_HolidaysOrEvents;

  factory _HolidaysOrEvents.fromJson(Map<String, dynamic> json) =
      _$_HolidaysOrEvents.fromJson;

  @override
  List<Datum>? get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HolidaysOrEventsCopyWith<_HolidaysOrEvents> get copyWith =>
      throw _privateConstructorUsedError;
}

Datum _$DatumFromJson(Map<String, dynamic> json) {
  return _Datum.fromJson(json);
}

/// @nodoc
class _$DatumTearOff {
  const _$DatumTearOff();

  _Datum call(
      {required int? id,
      required String? name,
      required String? name_np,
      required String? summary,
      required String? type,
      required int? month,
      required String? date,
      required String? parsedDate,
      required String? date_np}) {
    return _Datum(
      id: id,
      name: name,
      name_np: name_np,
      summary: summary,
      type: type,
      month: month,
      date: date,
      parsedDate: parsedDate,
      date_np: date_np,
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
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get name_np => throw _privateConstructorUsedError;
  String? get summary => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  int? get month => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  String? get parsedDate => throw _privateConstructorUsedError;
  String? get date_np => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DatumCopyWith<Datum> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatumCopyWith<$Res> {
  factory $DatumCopyWith(Datum value, $Res Function(Datum) then) =
      _$DatumCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? name,
      String? name_np,
      String? summary,
      String? type,
      int? month,
      String? date,
      String? parsedDate,
      String? date_np});
}

/// @nodoc
class _$DatumCopyWithImpl<$Res> implements $DatumCopyWith<$Res> {
  _$DatumCopyWithImpl(this._value, this._then);

  final Datum _value;
  // ignore: unused_field
  final $Res Function(Datum) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? name_np = freezed,
    Object? summary = freezed,
    Object? type = freezed,
    Object? month = freezed,
    Object? date = freezed,
    Object? parsedDate = freezed,
    Object? date_np = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      name_np: name_np == freezed
          ? _value.name_np
          : name_np // ignore: cast_nullable_to_non_nullable
              as String?,
      summary: summary == freezed
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      month: month == freezed
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      parsedDate: parsedDate == freezed
          ? _value.parsedDate
          : parsedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      date_np: date_np == freezed
          ? _value.date_np
          : date_np // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$DatumCopyWith<$Res> implements $DatumCopyWith<$Res> {
  factory _$DatumCopyWith(_Datum value, $Res Function(_Datum) then) =
      __$DatumCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? name,
      String? name_np,
      String? summary,
      String? type,
      int? month,
      String? date,
      String? parsedDate,
      String? date_np});
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
    Object? id = freezed,
    Object? name = freezed,
    Object? name_np = freezed,
    Object? summary = freezed,
    Object? type = freezed,
    Object? month = freezed,
    Object? date = freezed,
    Object? parsedDate = freezed,
    Object? date_np = freezed,
  }) {
    return _then(_Datum(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      name_np: name_np == freezed
          ? _value.name_np
          : name_np // ignore: cast_nullable_to_non_nullable
              as String?,
      summary: summary == freezed
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      month: month == freezed
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      parsedDate: parsedDate == freezed
          ? _value.parsedDate
          : parsedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      date_np: date_np == freezed
          ? _value.date_np
          : date_np // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Datum implements _Datum {
  const _$_Datum(
      {required this.id,
      required this.name,
      required this.name_np,
      required this.summary,
      required this.type,
      required this.month,
      required this.date,
      required this.parsedDate,
      required this.date_np});

  factory _$_Datum.fromJson(Map<String, dynamic> json) =>
      _$_$_DatumFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? name_np;
  @override
  final String? summary;
  @override
  final String? type;
  @override
  final int? month;
  @override
  final String? date;
  @override
  final String? parsedDate;
  @override
  final String? date_np;

  @override
  String toString() {
    return 'Datum(id: $id, name: $name, name_np: $name_np, summary: $summary, type: $type, month: $month, date: $date, parsedDate: $parsedDate, date_np: $date_np)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Datum &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.name_np, name_np) ||
                const DeepCollectionEquality()
                    .equals(other.name_np, name_np)) &&
            (identical(other.summary, summary) ||
                const DeepCollectionEquality()
                    .equals(other.summary, summary)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.month, month) ||
                const DeepCollectionEquality().equals(other.month, month)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.parsedDate, parsedDate) ||
                const DeepCollectionEquality()
                    .equals(other.parsedDate, parsedDate)) &&
            (identical(other.date_np, date_np) ||
                const DeepCollectionEquality().equals(other.date_np, date_np)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(name_np) ^
      const DeepCollectionEquality().hash(summary) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(month) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(parsedDate) ^
      const DeepCollectionEquality().hash(date_np);

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
      {required int? id,
      required String? name,
      required String? name_np,
      required String? summary,
      required String? type,
      required int? month,
      required String? date,
      required String? parsedDate,
      required String? date_np}) = _$_Datum;

  factory _Datum.fromJson(Map<String, dynamic> json) = _$_Datum.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get name_np => throw _privateConstructorUsedError;
  @override
  String? get summary => throw _privateConstructorUsedError;
  @override
  String? get type => throw _privateConstructorUsedError;
  @override
  int? get month => throw _privateConstructorUsedError;
  @override
  String? get date => throw _privateConstructorUsedError;
  @override
  String? get parsedDate => throw _privateConstructorUsedError;
  @override
  String? get date_np => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DatumCopyWith<_Datum> get copyWith => throw _privateConstructorUsedError;
}
