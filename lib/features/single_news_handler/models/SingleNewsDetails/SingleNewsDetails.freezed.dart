// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'SingleNewsDetails.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SingleNewsDetails _$SingleNewsDetailsFromJson(Map<String, dynamic> json) {
  return _SingleNewsDetails.fromJson(json);
}

/// @nodoc
class _$SingleNewsDetailsTearOff {
  const _$SingleNewsDetailsTearOff();

  _SingleNewsDetails call({required Data? data}) {
    return _SingleNewsDetails(
      data: data,
    );
  }

  SingleNewsDetails fromJson(Map<String, Object> json) {
    return SingleNewsDetails.fromJson(json);
  }
}

/// @nodoc
const $SingleNewsDetails = _$SingleNewsDetailsTearOff();

/// @nodoc
mixin _$SingleNewsDetails {
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SingleNewsDetailsCopyWith<SingleNewsDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleNewsDetailsCopyWith<$Res> {
  factory $SingleNewsDetailsCopyWith(
          SingleNewsDetails value, $Res Function(SingleNewsDetails) then) =
      _$SingleNewsDetailsCopyWithImpl<$Res>;
  $Res call({Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$SingleNewsDetailsCopyWithImpl<$Res>
    implements $SingleNewsDetailsCopyWith<$Res> {
  _$SingleNewsDetailsCopyWithImpl(this._value, this._then);

  final SingleNewsDetails _value;
  // ignore: unused_field
  final $Res Function(SingleNewsDetails) _then;

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
abstract class _$SingleNewsDetailsCopyWith<$Res>
    implements $SingleNewsDetailsCopyWith<$Res> {
  factory _$SingleNewsDetailsCopyWith(
          _SingleNewsDetails value, $Res Function(_SingleNewsDetails) then) =
      __$SingleNewsDetailsCopyWithImpl<$Res>;
  @override
  $Res call({Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$SingleNewsDetailsCopyWithImpl<$Res>
    extends _$SingleNewsDetailsCopyWithImpl<$Res>
    implements _$SingleNewsDetailsCopyWith<$Res> {
  __$SingleNewsDetailsCopyWithImpl(
      _SingleNewsDetails _value, $Res Function(_SingleNewsDetails) _then)
      : super(_value, (v) => _then(v as _SingleNewsDetails));

  @override
  _SingleNewsDetails get _value => super._value as _SingleNewsDetails;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_SingleNewsDetails(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SingleNewsDetails implements _SingleNewsDetails {
  const _$_SingleNewsDetails({required this.data});

  factory _$_SingleNewsDetails.fromJson(Map<String, dynamic> json) =>
      _$_$_SingleNewsDetailsFromJson(json);

  @override
  final Data? data;

  @override
  String toString() {
    return 'SingleNewsDetails(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SingleNewsDetails &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$SingleNewsDetailsCopyWith<_SingleNewsDetails> get copyWith =>
      __$SingleNewsDetailsCopyWithImpl<_SingleNewsDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SingleNewsDetailsToJson(this);
  }
}

abstract class _SingleNewsDetails implements SingleNewsDetails {
  const factory _SingleNewsDetails({required Data? data}) =
      _$_SingleNewsDetails;

  factory _SingleNewsDetails.fromJson(Map<String, dynamic> json) =
      _$_SingleNewsDetails.fromJson;

  @override
  Data? get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SingleNewsDetailsCopyWith<_SingleNewsDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
class _$DataTearOff {
  const _$DataTearOff();

  _Data call(
      {required int? id,
      required String? title,
      required String? link,
      required String? meta_description,
      required String? image,
      required int? views,
      required int? clicks,
      required Reactions? reactions,
      required String? content,
      required String? source,
      required String? source_logo,
      required List<Category>? categories,
      required String? created_at}) {
    return _Data(
      id: id,
      title: title,
      link: link,
      meta_description: meta_description,
      image: image,
      views: views,
      clicks: clicks,
      reactions: reactions,
      content: content,
      source: source,
      source_logo: source_logo,
      categories: categories,
      created_at: created_at,
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
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;
  String? get meta_description => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  int? get views => throw _privateConstructorUsedError;
  int? get clicks => throw _privateConstructorUsedError;
  Reactions? get reactions => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  String? get source => throw _privateConstructorUsedError;
  String? get source_logo => throw _privateConstructorUsedError;
  List<Category>? get categories => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? title,
      String? link,
      String? meta_description,
      String? image,
      int? views,
      int? clicks,
      Reactions? reactions,
      String? content,
      String? source,
      String? source_logo,
      List<Category>? categories,
      String? created_at});

  $ReactionsCopyWith<$Res>? get reactions;
}

/// @nodoc
class _$DataCopyWithImpl<$Res> implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  final Data _value;
  // ignore: unused_field
  final $Res Function(Data) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? link = freezed,
    Object? meta_description = freezed,
    Object? image = freezed,
    Object? views = freezed,
    Object? clicks = freezed,
    Object? reactions = freezed,
    Object? content = freezed,
    Object? source = freezed,
    Object? source_logo = freezed,
    Object? categories = freezed,
    Object? created_at = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      meta_description: meta_description == freezed
          ? _value.meta_description
          : meta_description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      views: views == freezed
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as int?,
      clicks: clicks == freezed
          ? _value.clicks
          : clicks // ignore: cast_nullable_to_non_nullable
              as int?,
      reactions: reactions == freezed
          ? _value.reactions
          : reactions // ignore: cast_nullable_to_non_nullable
              as Reactions?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      source_logo: source_logo == freezed
          ? _value.source_logo
          : source_logo // ignore: cast_nullable_to_non_nullable
              as String?,
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>?,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $ReactionsCopyWith<$Res>? get reactions {
    if (_value.reactions == null) {
      return null;
    }

    return $ReactionsCopyWith<$Res>(_value.reactions!, (value) {
      return _then(_value.copyWith(reactions: value));
    });
  }
}

/// @nodoc
abstract class _$DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) then) =
      __$DataCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? title,
      String? link,
      String? meta_description,
      String? image,
      int? views,
      int? clicks,
      Reactions? reactions,
      String? content,
      String? source,
      String? source_logo,
      List<Category>? categories,
      String? created_at});

  @override
  $ReactionsCopyWith<$Res>? get reactions;
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
    Object? id = freezed,
    Object? title = freezed,
    Object? link = freezed,
    Object? meta_description = freezed,
    Object? image = freezed,
    Object? views = freezed,
    Object? clicks = freezed,
    Object? reactions = freezed,
    Object? content = freezed,
    Object? source = freezed,
    Object? source_logo = freezed,
    Object? categories = freezed,
    Object? created_at = freezed,
  }) {
    return _then(_Data(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      meta_description: meta_description == freezed
          ? _value.meta_description
          : meta_description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      views: views == freezed
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as int?,
      clicks: clicks == freezed
          ? _value.clicks
          : clicks // ignore: cast_nullable_to_non_nullable
              as int?,
      reactions: reactions == freezed
          ? _value.reactions
          : reactions // ignore: cast_nullable_to_non_nullable
              as Reactions?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      source_logo: source_logo == freezed
          ? _value.source_logo
          : source_logo // ignore: cast_nullable_to_non_nullable
              as String?,
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>?,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Data implements _Data {
  const _$_Data(
      {required this.id,
      required this.title,
      required this.link,
      required this.meta_description,
      required this.image,
      required this.views,
      required this.clicks,
      required this.reactions,
      required this.content,
      required this.source,
      required this.source_logo,
      required this.categories,
      required this.created_at});

  factory _$_Data.fromJson(Map<String, dynamic> json) =>
      _$_$_DataFromJson(json);

  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? link;
  @override
  final String? meta_description;
  @override
  final String? image;
  @override
  final int? views;
  @override
  final int? clicks;
  @override
  final Reactions? reactions;
  @override
  final String? content;
  @override
  final String? source;
  @override
  final String? source_logo;
  @override
  final List<Category>? categories;
  @override
  final String? created_at;

  @override
  String toString() {
    return 'Data(id: $id, title: $title, link: $link, meta_description: $meta_description, image: $image, views: $views, clicks: $clicks, reactions: $reactions, content: $content, source: $source, source_logo: $source_logo, categories: $categories, created_at: $created_at)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Data &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.link, link) ||
                const DeepCollectionEquality().equals(other.link, link)) &&
            (identical(other.meta_description, meta_description) ||
                const DeepCollectionEquality()
                    .equals(other.meta_description, meta_description)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.views, views) ||
                const DeepCollectionEquality().equals(other.views, views)) &&
            (identical(other.clicks, clicks) ||
                const DeepCollectionEquality().equals(other.clicks, clicks)) &&
            (identical(other.reactions, reactions) ||
                const DeepCollectionEquality()
                    .equals(other.reactions, reactions)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality()
                    .equals(other.content, content)) &&
            (identical(other.source, source) ||
                const DeepCollectionEquality().equals(other.source, source)) &&
            (identical(other.source_logo, source_logo) ||
                const DeepCollectionEquality()
                    .equals(other.source_logo, source_logo)) &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality()
                    .equals(other.categories, categories)) &&
            (identical(other.created_at, created_at) ||
                const DeepCollectionEquality()
                    .equals(other.created_at, created_at)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(link) ^
      const DeepCollectionEquality().hash(meta_description) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(views) ^
      const DeepCollectionEquality().hash(clicks) ^
      const DeepCollectionEquality().hash(reactions) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(source) ^
      const DeepCollectionEquality().hash(source_logo) ^
      const DeepCollectionEquality().hash(categories) ^
      const DeepCollectionEquality().hash(created_at);

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
  const factory _Data(
      {required int? id,
      required String? title,
      required String? link,
      required String? meta_description,
      required String? image,
      required int? views,
      required int? clicks,
      required Reactions? reactions,
      required String? content,
      required String? source,
      required String? source_logo,
      required List<Category>? categories,
      required String? created_at}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  String? get link => throw _privateConstructorUsedError;
  @override
  String? get meta_description => throw _privateConstructorUsedError;
  @override
  String? get image => throw _privateConstructorUsedError;
  @override
  int? get views => throw _privateConstructorUsedError;
  @override
  int? get clicks => throw _privateConstructorUsedError;
  @override
  Reactions? get reactions => throw _privateConstructorUsedError;
  @override
  String? get content => throw _privateConstructorUsedError;
  @override
  String? get source => throw _privateConstructorUsedError;
  @override
  String? get source_logo => throw _privateConstructorUsedError;
  @override
  List<Category>? get categories => throw _privateConstructorUsedError;
  @override
  String? get created_at => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DataCopyWith<_Data> get copyWith => throw _privateConstructorUsedError;
}
