// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'NewsSourcesFollowed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewsSourcesFollowed _$NewsSourcesFollowedFromJson(Map<String, dynamic> json) {
  return _NewsSourcesFollowed.fromJson(json);
}

/// @nodoc
class _$NewsSourcesFollowedTearOff {
  const _$NewsSourcesFollowedTearOff();

  _NewsSourcesFollowed call({required List<Datum>? data}) {
    return _NewsSourcesFollowed(
      data: data,
    );
  }

  NewsSourcesFollowed fromJson(Map<String, Object> json) {
    return NewsSourcesFollowed.fromJson(json);
  }
}

/// @nodoc
const $NewsSourcesFollowed = _$NewsSourcesFollowedTearOff();

/// @nodoc
mixin _$NewsSourcesFollowed {
  List<Datum>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsSourcesFollowedCopyWith<NewsSourcesFollowed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsSourcesFollowedCopyWith<$Res> {
  factory $NewsSourcesFollowedCopyWith(
          NewsSourcesFollowed value, $Res Function(NewsSourcesFollowed) then) =
      _$NewsSourcesFollowedCopyWithImpl<$Res>;
  $Res call({List<Datum>? data});
}

/// @nodoc
class _$NewsSourcesFollowedCopyWithImpl<$Res>
    implements $NewsSourcesFollowedCopyWith<$Res> {
  _$NewsSourcesFollowedCopyWithImpl(this._value, this._then);

  final NewsSourcesFollowed _value;
  // ignore: unused_field
  final $Res Function(NewsSourcesFollowed) _then;

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
abstract class _$NewsSourcesFollowedCopyWith<$Res>
    implements $NewsSourcesFollowedCopyWith<$Res> {
  factory _$NewsSourcesFollowedCopyWith(_NewsSourcesFollowed value,
          $Res Function(_NewsSourcesFollowed) then) =
      __$NewsSourcesFollowedCopyWithImpl<$Res>;
  @override
  $Res call({List<Datum>? data});
}

/// @nodoc
class __$NewsSourcesFollowedCopyWithImpl<$Res>
    extends _$NewsSourcesFollowedCopyWithImpl<$Res>
    implements _$NewsSourcesFollowedCopyWith<$Res> {
  __$NewsSourcesFollowedCopyWithImpl(
      _NewsSourcesFollowed _value, $Res Function(_NewsSourcesFollowed) _then)
      : super(_value, (v) => _then(v as _NewsSourcesFollowed));

  @override
  _NewsSourcesFollowed get _value => super._value as _NewsSourcesFollowed;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_NewsSourcesFollowed(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Datum>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NewsSourcesFollowed implements _NewsSourcesFollowed {
  const _$_NewsSourcesFollowed({required this.data});

  factory _$_NewsSourcesFollowed.fromJson(Map<String, dynamic> json) =>
      _$_$_NewsSourcesFollowedFromJson(json);

  @override
  final List<Datum>? data;

  @override
  String toString() {
    return 'NewsSourcesFollowed(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NewsSourcesFollowed &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$NewsSourcesFollowedCopyWith<_NewsSourcesFollowed> get copyWith =>
      __$NewsSourcesFollowedCopyWithImpl<_NewsSourcesFollowed>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NewsSourcesFollowedToJson(this);
  }
}

abstract class _NewsSourcesFollowed implements NewsSourcesFollowed {
  const factory _NewsSourcesFollowed({required List<Datum>? data}) =
      _$_NewsSourcesFollowed;

  factory _NewsSourcesFollowed.fromJson(Map<String, dynamic> json) =
      _$_NewsSourcesFollowed.fromJson;

  @override
  List<Datum>? get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NewsSourcesFollowedCopyWith<_NewsSourcesFollowed> get copyWith =>
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
      required int? followers_count,
      required int? news_count,
      required String? link,
      required String? logo}) {
    return _Datum(
      id: id,
      name: name,
      followers_count: followers_count,
      news_count: news_count,
      link: link,
      logo: logo,
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
  int? get followers_count => throw _privateConstructorUsedError;
  int? get news_count => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;
  String? get logo => throw _privateConstructorUsedError;

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
      int? followers_count,
      int? news_count,
      String? link,
      String? logo});
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
    Object? followers_count = freezed,
    Object? news_count = freezed,
    Object? link = freezed,
    Object? logo = freezed,
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
      followers_count: followers_count == freezed
          ? _value.followers_count
          : followers_count // ignore: cast_nullable_to_non_nullable
              as int?,
      news_count: news_count == freezed
          ? _value.news_count
          : news_count // ignore: cast_nullable_to_non_nullable
              as int?,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: logo == freezed
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
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
      int? followers_count,
      int? news_count,
      String? link,
      String? logo});
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
    Object? followers_count = freezed,
    Object? news_count = freezed,
    Object? link = freezed,
    Object? logo = freezed,
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
      followers_count: followers_count == freezed
          ? _value.followers_count
          : followers_count // ignore: cast_nullable_to_non_nullable
              as int?,
      news_count: news_count == freezed
          ? _value.news_count
          : news_count // ignore: cast_nullable_to_non_nullable
              as int?,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: logo == freezed
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
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
      required this.followers_count,
      required this.news_count,
      required this.link,
      required this.logo});

  factory _$_Datum.fromJson(Map<String, dynamic> json) =>
      _$_$_DatumFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final int? followers_count;
  @override
  final int? news_count;
  @override
  final String? link;
  @override
  final String? logo;

  @override
  String toString() {
    return 'Datum(id: $id, name: $name, followers_count: $followers_count, news_count: $news_count, link: $link, logo: $logo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Datum &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.followers_count, followers_count) ||
                const DeepCollectionEquality()
                    .equals(other.followers_count, followers_count)) &&
            (identical(other.news_count, news_count) ||
                const DeepCollectionEquality()
                    .equals(other.news_count, news_count)) &&
            (identical(other.link, link) ||
                const DeepCollectionEquality().equals(other.link, link)) &&
            (identical(other.logo, logo) ||
                const DeepCollectionEquality().equals(other.logo, logo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(followers_count) ^
      const DeepCollectionEquality().hash(news_count) ^
      const DeepCollectionEquality().hash(link) ^
      const DeepCollectionEquality().hash(logo);

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
      required int? followers_count,
      required int? news_count,
      required String? link,
      required String? logo}) = _$_Datum;

  factory _Datum.fromJson(Map<String, dynamic> json) = _$_Datum.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  int? get followers_count => throw _privateConstructorUsedError;
  @override
  int? get news_count => throw _privateConstructorUsedError;
  @override
  String? get link => throw _privateConstructorUsedError;
  @override
  String? get logo => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DatumCopyWith<_Datum> get copyWith => throw _privateConstructorUsedError;
}
