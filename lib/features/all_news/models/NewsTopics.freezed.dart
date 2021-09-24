// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'NewsTopics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewsTopics _$NewsTopicsFromJson(Map<String, dynamic> json) {
  return _NewsTopics.fromJson(json);
}

/// @nodoc
class _$NewsTopicsTearOff {
  const _$NewsTopicsTearOff();

  _NewsTopics call({required List<Datum>? data}) {
    return _NewsTopics(
      data: data,
    );
  }

  NewsTopics fromJson(Map<String, Object> json) {
    return NewsTopics.fromJson(json);
  }
}

/// @nodoc
const $NewsTopics = _$NewsTopicsTearOff();

/// @nodoc
mixin _$NewsTopics {
  List<Datum>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsTopicsCopyWith<NewsTopics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsTopicsCopyWith<$Res> {
  factory $NewsTopicsCopyWith(
          NewsTopics value, $Res Function(NewsTopics) then) =
      _$NewsTopicsCopyWithImpl<$Res>;
  $Res call({List<Datum>? data});
}

/// @nodoc
class _$NewsTopicsCopyWithImpl<$Res> implements $NewsTopicsCopyWith<$Res> {
  _$NewsTopicsCopyWithImpl(this._value, this._then);

  final NewsTopics _value;
  // ignore: unused_field
  final $Res Function(NewsTopics) _then;

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
abstract class _$NewsTopicsCopyWith<$Res> implements $NewsTopicsCopyWith<$Res> {
  factory _$NewsTopicsCopyWith(
          _NewsTopics value, $Res Function(_NewsTopics) then) =
      __$NewsTopicsCopyWithImpl<$Res>;
  @override
  $Res call({List<Datum>? data});
}

/// @nodoc
class __$NewsTopicsCopyWithImpl<$Res> extends _$NewsTopicsCopyWithImpl<$Res>
    implements _$NewsTopicsCopyWith<$Res> {
  __$NewsTopicsCopyWithImpl(
      _NewsTopics _value, $Res Function(_NewsTopics) _then)
      : super(_value, (v) => _then(v as _NewsTopics));

  @override
  _NewsTopics get _value => super._value as _NewsTopics;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_NewsTopics(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Datum>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NewsTopics implements _NewsTopics {
  const _$_NewsTopics({required this.data});

  factory _$_NewsTopics.fromJson(Map<String, dynamic> json) =>
      _$_$_NewsTopicsFromJson(json);

  @override
  final List<Datum>? data;

  @override
  String toString() {
    return 'NewsTopics(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NewsTopics &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$NewsTopicsCopyWith<_NewsTopics> get copyWith =>
      __$NewsTopicsCopyWithImpl<_NewsTopics>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NewsTopicsToJson(this);
  }
}

abstract class _NewsTopics implements NewsTopics {
  const factory _NewsTopics({required List<Datum>? data}) = _$_NewsTopics;

  factory _NewsTopics.fromJson(Map<String, dynamic> json) =
      _$_NewsTopics.fromJson;

  @override
  List<Datum>? get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NewsTopicsCopyWith<_NewsTopics> get copyWith =>
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
      required String? language,
      required int? language_id,
      required int? newsCount,
      required String? slug}) {
    return _Datum(
      id: id,
      name: name,
      language: language,
      language_id: language_id,
      newsCount: newsCount,
      slug: slug,
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
  String? get language => throw _privateConstructorUsedError;
  int? get language_id => throw _privateConstructorUsedError;
  int? get newsCount => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;

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
      String? language,
      int? language_id,
      int? newsCount,
      String? slug});
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
    Object? language = freezed,
    Object? language_id = freezed,
    Object? newsCount = freezed,
    Object? slug = freezed,
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
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      language_id: language_id == freezed
          ? _value.language_id
          : language_id // ignore: cast_nullable_to_non_nullable
              as int?,
      newsCount: newsCount == freezed
          ? _value.newsCount
          : newsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      slug: slug == freezed
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
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
      String? language,
      int? language_id,
      int? newsCount,
      String? slug});
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
    Object? language = freezed,
    Object? language_id = freezed,
    Object? newsCount = freezed,
    Object? slug = freezed,
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
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      language_id: language_id == freezed
          ? _value.language_id
          : language_id // ignore: cast_nullable_to_non_nullable
              as int?,
      newsCount: newsCount == freezed
          ? _value.newsCount
          : newsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      slug: slug == freezed
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
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
      required this.language,
      required this.language_id,
      required this.newsCount,
      required this.slug});

  factory _$_Datum.fromJson(Map<String, dynamic> json) =>
      _$_$_DatumFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? language;
  @override
  final int? language_id;
  @override
  final int? newsCount;
  @override
  final String? slug;

  @override
  String toString() {
    return 'Datum(id: $id, name: $name, language: $language, language_id: $language_id, newsCount: $newsCount, slug: $slug)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Datum &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)) &&
            (identical(other.language_id, language_id) ||
                const DeepCollectionEquality()
                    .equals(other.language_id, language_id)) &&
            (identical(other.newsCount, newsCount) ||
                const DeepCollectionEquality()
                    .equals(other.newsCount, newsCount)) &&
            (identical(other.slug, slug) ||
                const DeepCollectionEquality().equals(other.slug, slug)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(language) ^
      const DeepCollectionEquality().hash(language_id) ^
      const DeepCollectionEquality().hash(newsCount) ^
      const DeepCollectionEquality().hash(slug);

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
      required String? language,
      required int? language_id,
      required int? newsCount,
      required String? slug}) = _$_Datum;

  factory _Datum.fromJson(Map<String, dynamic> json) = _$_Datum.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get language => throw _privateConstructorUsedError;
  @override
  int? get language_id => throw _privateConstructorUsedError;
  @override
  int? get newsCount => throw _privateConstructorUsedError;
  @override
  String? get slug => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DatumCopyWith<_Datum> get copyWith => throw _privateConstructorUsedError;
}
