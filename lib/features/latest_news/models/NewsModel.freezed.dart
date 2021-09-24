// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'NewsModel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewsModel _$NewsModelFromJson(Map<String, dynamic> json) {
  return _LatestNewsModel.fromJson(json);
}

/// @nodoc
class _$NewsModelTearOff {
  const _$NewsModelTearOff();

  _LatestNewsModel call(
      {required List<Datum>? data,
      required Links? links,
      required Meta? meta}) {
    return _LatestNewsModel(
      data: data,
      links: links,
      meta: meta,
    );
  }

  NewsModel fromJson(Map<String, Object> json) {
    return NewsModel.fromJson(json);
  }
}

/// @nodoc
const $NewsModel = _$NewsModelTearOff();

/// @nodoc
mixin _$NewsModel {
  List<Datum>? get data => throw _privateConstructorUsedError;
  Links? get links => throw _privateConstructorUsedError;
  Meta? get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsModelCopyWith<NewsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsModelCopyWith<$Res> {
  factory $NewsModelCopyWith(NewsModel value, $Res Function(NewsModel) then) =
      _$NewsModelCopyWithImpl<$Res>;
  $Res call({List<Datum>? data, Links? links, Meta? meta});

  $LinksCopyWith<$Res>? get links;
  $MetaCopyWith<$Res>? get meta;
}

/// @nodoc
class _$NewsModelCopyWithImpl<$Res> implements $NewsModelCopyWith<$Res> {
  _$NewsModelCopyWithImpl(this._value, this._then);

  final NewsModel _value;
  // ignore: unused_field
  final $Res Function(NewsModel) _then;

  @override
  $Res call({
    Object? data = freezed,
    Object? links = freezed,
    Object? meta = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Datum>?,
      links: links == freezed
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as Links?,
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta?,
    ));
  }

  @override
  $LinksCopyWith<$Res>? get links {
    if (_value.links == null) {
      return null;
    }

    return $LinksCopyWith<$Res>(_value.links!, (value) {
      return _then(_value.copyWith(links: value));
    });
  }

  @override
  $MetaCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $MetaCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value));
    });
  }
}

/// @nodoc
abstract class _$LatestNewsModelCopyWith<$Res>
    implements $NewsModelCopyWith<$Res> {
  factory _$LatestNewsModelCopyWith(
          _LatestNewsModel value, $Res Function(_LatestNewsModel) then) =
      __$LatestNewsModelCopyWithImpl<$Res>;
  @override
  $Res call({List<Datum>? data, Links? links, Meta? meta});

  @override
  $LinksCopyWith<$Res>? get links;
  @override
  $MetaCopyWith<$Res>? get meta;
}

/// @nodoc
class __$LatestNewsModelCopyWithImpl<$Res> extends _$NewsModelCopyWithImpl<$Res>
    implements _$LatestNewsModelCopyWith<$Res> {
  __$LatestNewsModelCopyWithImpl(
      _LatestNewsModel _value, $Res Function(_LatestNewsModel) _then)
      : super(_value, (v) => _then(v as _LatestNewsModel));

  @override
  _LatestNewsModel get _value => super._value as _LatestNewsModel;

  @override
  $Res call({
    Object? data = freezed,
    Object? links = freezed,
    Object? meta = freezed,
  }) {
    return _then(_LatestNewsModel(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Datum>?,
      links: links == freezed
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as Links?,
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LatestNewsModel implements _LatestNewsModel {
  const _$_LatestNewsModel(
      {required this.data, required this.links, required this.meta});

  factory _$_LatestNewsModel.fromJson(Map<String, dynamic> json) =>
      _$_$_LatestNewsModelFromJson(json);

  @override
  final List<Datum>? data;
  @override
  final Links? links;
  @override
  final Meta? meta;

  @override
  String toString() {
    return 'NewsModel(data: $data, links: $links, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LatestNewsModel &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.links, links) ||
                const DeepCollectionEquality().equals(other.links, links)) &&
            (identical(other.meta, meta) ||
                const DeepCollectionEquality().equals(other.meta, meta)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(links) ^
      const DeepCollectionEquality().hash(meta);

  @JsonKey(ignore: true)
  @override
  _$LatestNewsModelCopyWith<_LatestNewsModel> get copyWith =>
      __$LatestNewsModelCopyWithImpl<_LatestNewsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LatestNewsModelToJson(this);
  }
}

abstract class _LatestNewsModel implements NewsModel {
  const factory _LatestNewsModel(
      {required List<Datum>? data,
      required Links? links,
      required Meta? meta}) = _$_LatestNewsModel;

  factory _LatestNewsModel.fromJson(Map<String, dynamic> json) =
      _$_LatestNewsModel.fromJson;

  @override
  List<Datum>? get data => throw _privateConstructorUsedError;
  @override
  Links? get links => throw _privateConstructorUsedError;
  @override
  Meta? get meta => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LatestNewsModelCopyWith<_LatestNewsModel> get copyWith =>
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
      required String? title,
      required String? link,
      required String? guid,
      required String? status,
      required String? meta_description,
      required String? image,
      required int? views,
      required int? clicks,
      required Reactions? reactions,
      required int? total_comments,
      required String? content,
      required Publisher? publisher,
      required int? language_id,
      required Language? language,
      required int? trend,
      required String? trend_name,
      required List<Category>? categories,
      required String? created_at}) {
    return _Datum(
      id: id,
      title: title,
      link: link,
      guid: guid,
      status: status,
      meta_description: meta_description,
      image: image,
      views: views,
      clicks: clicks,
      reactions: reactions,
      total_comments: total_comments,
      content: content,
      publisher: publisher,
      language_id: language_id,
      language: language,
      trend: trend,
      trend_name: trend_name,
      categories: categories,
      created_at: created_at,
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
  String? get title => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;
  String? get guid => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get meta_description => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  int? get views => throw _privateConstructorUsedError;
  int? get clicks => throw _privateConstructorUsedError;
  Reactions? get reactions => throw _privateConstructorUsedError;
  int? get total_comments => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  Publisher? get publisher => throw _privateConstructorUsedError;
  int? get language_id => throw _privateConstructorUsedError;
  Language? get language => throw _privateConstructorUsedError;
  int? get trend => throw _privateConstructorUsedError;
  String? get trend_name => throw _privateConstructorUsedError;
  List<Category>? get categories => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;

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
      String? title,
      String? link,
      String? guid,
      String? status,
      String? meta_description,
      String? image,
      int? views,
      int? clicks,
      Reactions? reactions,
      int? total_comments,
      String? content,
      Publisher? publisher,
      int? language_id,
      Language? language,
      int? trend,
      String? trend_name,
      List<Category>? categories,
      String? created_at});

  $ReactionsCopyWith<$Res>? get reactions;
  $PublisherCopyWith<$Res>? get publisher;
  $LanguageCopyWith<$Res>? get language;
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
    Object? title = freezed,
    Object? link = freezed,
    Object? guid = freezed,
    Object? status = freezed,
    Object? meta_description = freezed,
    Object? image = freezed,
    Object? views = freezed,
    Object? clicks = freezed,
    Object? reactions = freezed,
    Object? total_comments = freezed,
    Object? content = freezed,
    Object? publisher = freezed,
    Object? language_id = freezed,
    Object? language = freezed,
    Object? trend = freezed,
    Object? trend_name = freezed,
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
      guid: guid == freezed
          ? _value.guid
          : guid // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
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
      total_comments: total_comments == freezed
          ? _value.total_comments
          : total_comments // ignore: cast_nullable_to_non_nullable
              as int?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      publisher: publisher == freezed
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as Publisher?,
      language_id: language_id == freezed
          ? _value.language_id
          : language_id // ignore: cast_nullable_to_non_nullable
              as int?,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as Language?,
      trend: trend == freezed
          ? _value.trend
          : trend // ignore: cast_nullable_to_non_nullable
              as int?,
      trend_name: trend_name == freezed
          ? _value.trend_name
          : trend_name // ignore: cast_nullable_to_non_nullable
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

  @override
  $PublisherCopyWith<$Res>? get publisher {
    if (_value.publisher == null) {
      return null;
    }

    return $PublisherCopyWith<$Res>(_value.publisher!, (value) {
      return _then(_value.copyWith(publisher: value));
    });
  }

  @override
  $LanguageCopyWith<$Res>? get language {
    if (_value.language == null) {
      return null;
    }

    return $LanguageCopyWith<$Res>(_value.language!, (value) {
      return _then(_value.copyWith(language: value));
    });
  }
}

/// @nodoc
abstract class _$DatumCopyWith<$Res> implements $DatumCopyWith<$Res> {
  factory _$DatumCopyWith(_Datum value, $Res Function(_Datum) then) =
      __$DatumCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? title,
      String? link,
      String? guid,
      String? status,
      String? meta_description,
      String? image,
      int? views,
      int? clicks,
      Reactions? reactions,
      int? total_comments,
      String? content,
      Publisher? publisher,
      int? language_id,
      Language? language,
      int? trend,
      String? trend_name,
      List<Category>? categories,
      String? created_at});

  @override
  $ReactionsCopyWith<$Res>? get reactions;
  @override
  $PublisherCopyWith<$Res>? get publisher;
  @override
  $LanguageCopyWith<$Res>? get language;
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
    Object? title = freezed,
    Object? link = freezed,
    Object? guid = freezed,
    Object? status = freezed,
    Object? meta_description = freezed,
    Object? image = freezed,
    Object? views = freezed,
    Object? clicks = freezed,
    Object? reactions = freezed,
    Object? total_comments = freezed,
    Object? content = freezed,
    Object? publisher = freezed,
    Object? language_id = freezed,
    Object? language = freezed,
    Object? trend = freezed,
    Object? trend_name = freezed,
    Object? categories = freezed,
    Object? created_at = freezed,
  }) {
    return _then(_Datum(
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
      guid: guid == freezed
          ? _value.guid
          : guid // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
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
      total_comments: total_comments == freezed
          ? _value.total_comments
          : total_comments // ignore: cast_nullable_to_non_nullable
              as int?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      publisher: publisher == freezed
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as Publisher?,
      language_id: language_id == freezed
          ? _value.language_id
          : language_id // ignore: cast_nullable_to_non_nullable
              as int?,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as Language?,
      trend: trend == freezed
          ? _value.trend
          : trend // ignore: cast_nullable_to_non_nullable
              as int?,
      trend_name: trend_name == freezed
          ? _value.trend_name
          : trend_name // ignore: cast_nullable_to_non_nullable
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
class _$_Datum implements _Datum {
  const _$_Datum(
      {required this.id,
      required this.title,
      required this.link,
      required this.guid,
      required this.status,
      required this.meta_description,
      required this.image,
      required this.views,
      required this.clicks,
      required this.reactions,
      required this.total_comments,
      required this.content,
      required this.publisher,
      required this.language_id,
      required this.language,
      required this.trend,
      required this.trend_name,
      required this.categories,
      required this.created_at});

  factory _$_Datum.fromJson(Map<String, dynamic> json) =>
      _$_$_DatumFromJson(json);

  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? link;
  @override
  final String? guid;
  @override
  final String? status;
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
  final int? total_comments;
  @override
  final String? content;
  @override
  final Publisher? publisher;
  @override
  final int? language_id;
  @override
  final Language? language;
  @override
  final int? trend;
  @override
  final String? trend_name;
  @override
  final List<Category>? categories;
  @override
  final String? created_at;

  @override
  String toString() {
    return 'Datum(id: $id, title: $title, link: $link, guid: $guid, status: $status, meta_description: $meta_description, image: $image, views: $views, clicks: $clicks, reactions: $reactions, total_comments: $total_comments, content: $content, publisher: $publisher, language_id: $language_id, language: $language, trend: $trend, trend_name: $trend_name, categories: $categories, created_at: $created_at)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Datum &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.link, link) ||
                const DeepCollectionEquality().equals(other.link, link)) &&
            (identical(other.guid, guid) ||
                const DeepCollectionEquality().equals(other.guid, guid)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
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
            (identical(other.total_comments, total_comments) ||
                const DeepCollectionEquality()
                    .equals(other.total_comments, total_comments)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality()
                    .equals(other.content, content)) &&
            (identical(other.publisher, publisher) ||
                const DeepCollectionEquality()
                    .equals(other.publisher, publisher)) &&
            (identical(other.language_id, language_id) ||
                const DeepCollectionEquality()
                    .equals(other.language_id, language_id)) &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)) &&
            (identical(other.trend, trend) ||
                const DeepCollectionEquality().equals(other.trend, trend)) &&
            (identical(other.trend_name, trend_name) ||
                const DeepCollectionEquality()
                    .equals(other.trend_name, trend_name)) &&
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
      const DeepCollectionEquality().hash(guid) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(meta_description) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(views) ^
      const DeepCollectionEquality().hash(clicks) ^
      const DeepCollectionEquality().hash(reactions) ^
      const DeepCollectionEquality().hash(total_comments) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(publisher) ^
      const DeepCollectionEquality().hash(language_id) ^
      const DeepCollectionEquality().hash(language) ^
      const DeepCollectionEquality().hash(trend) ^
      const DeepCollectionEquality().hash(trend_name) ^
      const DeepCollectionEquality().hash(categories) ^
      const DeepCollectionEquality().hash(created_at);

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
      required String? title,
      required String? link,
      required String? guid,
      required String? status,
      required String? meta_description,
      required String? image,
      required int? views,
      required int? clicks,
      required Reactions? reactions,
      required int? total_comments,
      required String? content,
      required Publisher? publisher,
      required int? language_id,
      required Language? language,
      required int? trend,
      required String? trend_name,
      required List<Category>? categories,
      required String? created_at}) = _$_Datum;

  factory _Datum.fromJson(Map<String, dynamic> json) = _$_Datum.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  String? get link => throw _privateConstructorUsedError;
  @override
  String? get guid => throw _privateConstructorUsedError;
  @override
  String? get status => throw _privateConstructorUsedError;
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
  int? get total_comments => throw _privateConstructorUsedError;
  @override
  String? get content => throw _privateConstructorUsedError;
  @override
  Publisher? get publisher => throw _privateConstructorUsedError;
  @override
  int? get language_id => throw _privateConstructorUsedError;
  @override
  Language? get language => throw _privateConstructorUsedError;
  @override
  int? get trend => throw _privateConstructorUsedError;
  @override
  String? get trend_name => throw _privateConstructorUsedError;
  @override
  List<Category>? get categories => throw _privateConstructorUsedError;
  @override
  String? get created_at => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DatumCopyWith<_Datum> get copyWith => throw _privateConstructorUsedError;
}

Language _$LanguageFromJson(Map<String, dynamic> json) {
  return _Language.fromJson(json);
}

/// @nodoc
class _$LanguageTearOff {
  const _$LanguageTearOff();

  _Language call(
      {required int? id,
      required String? name,
      required String? language_code}) {
    return _Language(
      id: id,
      name: name,
      language_code: language_code,
    );
  }

  Language fromJson(Map<String, Object> json) {
    return Language.fromJson(json);
  }
}

/// @nodoc
const $Language = _$LanguageTearOff();

/// @nodoc
mixin _$Language {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get language_code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LanguageCopyWith<Language> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageCopyWith<$Res> {
  factory $LanguageCopyWith(Language value, $Res Function(Language) then) =
      _$LanguageCopyWithImpl<$Res>;
  $Res call({int? id, String? name, String? language_code});
}

/// @nodoc
class _$LanguageCopyWithImpl<$Res> implements $LanguageCopyWith<$Res> {
  _$LanguageCopyWithImpl(this._value, this._then);

  final Language _value;
  // ignore: unused_field
  final $Res Function(Language) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? language_code = freezed,
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
      language_code: language_code == freezed
          ? _value.language_code
          : language_code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$LanguageCopyWith<$Res> implements $LanguageCopyWith<$Res> {
  factory _$LanguageCopyWith(_Language value, $Res Function(_Language) then) =
      __$LanguageCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String? name, String? language_code});
}

/// @nodoc
class __$LanguageCopyWithImpl<$Res> extends _$LanguageCopyWithImpl<$Res>
    implements _$LanguageCopyWith<$Res> {
  __$LanguageCopyWithImpl(_Language _value, $Res Function(_Language) _then)
      : super(_value, (v) => _then(v as _Language));

  @override
  _Language get _value => super._value as _Language;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? language_code = freezed,
  }) {
    return _then(_Language(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      language_code: language_code == freezed
          ? _value.language_code
          : language_code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Language implements _Language {
  const _$_Language(
      {required this.id, required this.name, required this.language_code});

  factory _$_Language.fromJson(Map<String, dynamic> json) =>
      _$_$_LanguageFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? language_code;

  @override
  String toString() {
    return 'Language(id: $id, name: $name, language_code: $language_code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Language &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.language_code, language_code) ||
                const DeepCollectionEquality()
                    .equals(other.language_code, language_code)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(language_code);

  @JsonKey(ignore: true)
  @override
  _$LanguageCopyWith<_Language> get copyWith =>
      __$LanguageCopyWithImpl<_Language>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LanguageToJson(this);
  }
}

abstract class _Language implements Language {
  const factory _Language(
      {required int? id,
      required String? name,
      required String? language_code}) = _$_Language;

  factory _Language.fromJson(Map<String, dynamic> json) = _$_Language.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get language_code => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LanguageCopyWith<_Language> get copyWith =>
      throw _privateConstructorUsedError;
}

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return _Category.fromJson(json);
}

/// @nodoc
class _$CategoryTearOff {
  const _$CategoryTearOff();

  _Category call(
      {required int? id,
      required String? name,
      required String? language,
      required int? language_id,
      required int? newsCount,
      required String? slug}) {
    return _Category(
      id: id,
      name: name,
      language: language,
      language_id: language_id,
      newsCount: newsCount,
      slug: slug,
    );
  }

  Category fromJson(Map<String, Object> json) {
    return Category.fromJson(json);
  }
}

/// @nodoc
const $Category = _$CategoryTearOff();

/// @nodoc
mixin _$Category {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  int? get language_id => throw _privateConstructorUsedError;
  int? get newsCount => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryCopyWith<Category> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryCopyWith<$Res> {
  factory $CategoryCopyWith(Category value, $Res Function(Category) then) =
      _$CategoryCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? name,
      String? language,
      int? language_id,
      int? newsCount,
      String? slug});
}

/// @nodoc
class _$CategoryCopyWithImpl<$Res> implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._value, this._then);

  final Category _value;
  // ignore: unused_field
  final $Res Function(Category) _then;

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
abstract class _$CategoryCopyWith<$Res> implements $CategoryCopyWith<$Res> {
  factory _$CategoryCopyWith(_Category value, $Res Function(_Category) then) =
      __$CategoryCopyWithImpl<$Res>;
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
class __$CategoryCopyWithImpl<$Res> extends _$CategoryCopyWithImpl<$Res>
    implements _$CategoryCopyWith<$Res> {
  __$CategoryCopyWithImpl(_Category _value, $Res Function(_Category) _then)
      : super(_value, (v) => _then(v as _Category));

  @override
  _Category get _value => super._value as _Category;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? language = freezed,
    Object? language_id = freezed,
    Object? newsCount = freezed,
    Object? slug = freezed,
  }) {
    return _then(_Category(
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
class _$_Category implements _Category {
  const _$_Category(
      {required this.id,
      required this.name,
      required this.language,
      required this.language_id,
      required this.newsCount,
      required this.slug});

  factory _$_Category.fromJson(Map<String, dynamic> json) =>
      _$_$_CategoryFromJson(json);

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
    return 'Category(id: $id, name: $name, language: $language, language_id: $language_id, newsCount: $newsCount, slug: $slug)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Category &&
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
  _$CategoryCopyWith<_Category> get copyWith =>
      __$CategoryCopyWithImpl<_Category>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CategoryToJson(this);
  }
}

abstract class _Category implements Category {
  const factory _Category(
      {required int? id,
      required String? name,
      required String? language,
      required int? language_id,
      required int? newsCount,
      required String? slug}) = _$_Category;

  factory _Category.fromJson(Map<String, dynamic> json) = _$_Category.fromJson;

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
  _$CategoryCopyWith<_Category> get copyWith =>
      throw _privateConstructorUsedError;
}

Publisher _$PublisherFromJson(Map<String, dynamic> json) {
  return _Publisher.fromJson(json);
}

/// @nodoc
class _$PublisherTearOff {
  const _$PublisherTearOff();

  _Publisher call(
      {required int? id,
      required String? name,
      required int? followers_count,
      required int? news_count,
      required String? link,
      required String? logo}) {
    return _Publisher(
      id: id,
      name: name,
      followers_count: followers_count,
      news_count: news_count,
      link: link,
      logo: logo,
    );
  }

  Publisher fromJson(Map<String, Object> json) {
    return Publisher.fromJson(json);
  }
}

/// @nodoc
const $Publisher = _$PublisherTearOff();

/// @nodoc
mixin _$Publisher {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get followers_count => throw _privateConstructorUsedError;
  int? get news_count => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;
  String? get logo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PublisherCopyWith<Publisher> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PublisherCopyWith<$Res> {
  factory $PublisherCopyWith(Publisher value, $Res Function(Publisher) then) =
      _$PublisherCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? name,
      int? followers_count,
      int? news_count,
      String? link,
      String? logo});
}

/// @nodoc
class _$PublisherCopyWithImpl<$Res> implements $PublisherCopyWith<$Res> {
  _$PublisherCopyWithImpl(this._value, this._then);

  final Publisher _value;
  // ignore: unused_field
  final $Res Function(Publisher) _then;

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
abstract class _$PublisherCopyWith<$Res> implements $PublisherCopyWith<$Res> {
  factory _$PublisherCopyWith(
          _Publisher value, $Res Function(_Publisher) then) =
      __$PublisherCopyWithImpl<$Res>;
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
class __$PublisherCopyWithImpl<$Res> extends _$PublisherCopyWithImpl<$Res>
    implements _$PublisherCopyWith<$Res> {
  __$PublisherCopyWithImpl(_Publisher _value, $Res Function(_Publisher) _then)
      : super(_value, (v) => _then(v as _Publisher));

  @override
  _Publisher get _value => super._value as _Publisher;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? followers_count = freezed,
    Object? news_count = freezed,
    Object? link = freezed,
    Object? logo = freezed,
  }) {
    return _then(_Publisher(
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
class _$_Publisher implements _Publisher {
  const _$_Publisher(
      {required this.id,
      required this.name,
      required this.followers_count,
      required this.news_count,
      required this.link,
      required this.logo});

  factory _$_Publisher.fromJson(Map<String, dynamic> json) =>
      _$_$_PublisherFromJson(json);

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
    return 'Publisher(id: $id, name: $name, followers_count: $followers_count, news_count: $news_count, link: $link, logo: $logo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Publisher &&
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
  _$PublisherCopyWith<_Publisher> get copyWith =>
      __$PublisherCopyWithImpl<_Publisher>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PublisherToJson(this);
  }
}

abstract class _Publisher implements Publisher {
  const factory _Publisher(
      {required int? id,
      required String? name,
      required int? followers_count,
      required int? news_count,
      required String? link,
      required String? logo}) = _$_Publisher;

  factory _Publisher.fromJson(Map<String, dynamic> json) =
      _$_Publisher.fromJson;

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
  _$PublisherCopyWith<_Publisher> get copyWith =>
      throw _privateConstructorUsedError;
}

Reactions _$ReactionsFromJson(Map<String, dynamic> json) {
  return _Reactions.fromJson(json);
}

/// @nodoc
class _$ReactionsTearOff {
  const _$ReactionsTearOff();

  _Reactions call(
      {required Reaction? reaction,
      required Actions? reactions,
      required Actions? ractions}) {
    return _Reactions(
      reaction: reaction,
      reactions: reactions,
      ractions: ractions,
    );
  }

  Reactions fromJson(Map<String, Object> json) {
    return Reactions.fromJson(json);
  }
}

/// @nodoc
const $Reactions = _$ReactionsTearOff();

/// @nodoc
mixin _$Reactions {
  Reaction? get reaction => throw _privateConstructorUsedError;
  Actions? get reactions => throw _privateConstructorUsedError;
  Actions? get ractions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReactionsCopyWith<Reactions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReactionsCopyWith<$Res> {
  factory $ReactionsCopyWith(Reactions value, $Res Function(Reactions) then) =
      _$ReactionsCopyWithImpl<$Res>;
  $Res call({Reaction? reaction, Actions? reactions, Actions? ractions});

  $ReactionCopyWith<$Res>? get reaction;
  $ActionsCopyWith<$Res>? get reactions;
  $ActionsCopyWith<$Res>? get ractions;
}

/// @nodoc
class _$ReactionsCopyWithImpl<$Res> implements $ReactionsCopyWith<$Res> {
  _$ReactionsCopyWithImpl(this._value, this._then);

  final Reactions _value;
  // ignore: unused_field
  final $Res Function(Reactions) _then;

  @override
  $Res call({
    Object? reaction = freezed,
    Object? reactions = freezed,
    Object? ractions = freezed,
  }) {
    return _then(_value.copyWith(
      reaction: reaction == freezed
          ? _value.reaction
          : reaction // ignore: cast_nullable_to_non_nullable
              as Reaction?,
      reactions: reactions == freezed
          ? _value.reactions
          : reactions // ignore: cast_nullable_to_non_nullable
              as Actions?,
      ractions: ractions == freezed
          ? _value.ractions
          : ractions // ignore: cast_nullable_to_non_nullable
              as Actions?,
    ));
  }

  @override
  $ReactionCopyWith<$Res>? get reaction {
    if (_value.reaction == null) {
      return null;
    }

    return $ReactionCopyWith<$Res>(_value.reaction!, (value) {
      return _then(_value.copyWith(reaction: value));
    });
  }

  @override
  $ActionsCopyWith<$Res>? get reactions {
    if (_value.reactions == null) {
      return null;
    }

    return $ActionsCopyWith<$Res>(_value.reactions!, (value) {
      return _then(_value.copyWith(reactions: value));
    });
  }

  @override
  $ActionsCopyWith<$Res>? get ractions {
    if (_value.ractions == null) {
      return null;
    }

    return $ActionsCopyWith<$Res>(_value.ractions!, (value) {
      return _then(_value.copyWith(ractions: value));
    });
  }
}

/// @nodoc
abstract class _$ReactionsCopyWith<$Res> implements $ReactionsCopyWith<$Res> {
  factory _$ReactionsCopyWith(
          _Reactions value, $Res Function(_Reactions) then) =
      __$ReactionsCopyWithImpl<$Res>;
  @override
  $Res call({Reaction? reaction, Actions? reactions, Actions? ractions});

  @override
  $ReactionCopyWith<$Res>? get reaction;
  @override
  $ActionsCopyWith<$Res>? get reactions;
  @override
  $ActionsCopyWith<$Res>? get ractions;
}

/// @nodoc
class __$ReactionsCopyWithImpl<$Res> extends _$ReactionsCopyWithImpl<$Res>
    implements _$ReactionsCopyWith<$Res> {
  __$ReactionsCopyWithImpl(_Reactions _value, $Res Function(_Reactions) _then)
      : super(_value, (v) => _then(v as _Reactions));

  @override
  _Reactions get _value => super._value as _Reactions;

  @override
  $Res call({
    Object? reaction = freezed,
    Object? reactions = freezed,
    Object? ractions = freezed,
  }) {
    return _then(_Reactions(
      reaction: reaction == freezed
          ? _value.reaction
          : reaction // ignore: cast_nullable_to_non_nullable
              as Reaction?,
      reactions: reactions == freezed
          ? _value.reactions
          : reactions // ignore: cast_nullable_to_non_nullable
              as Actions?,
      ractions: ractions == freezed
          ? _value.ractions
          : ractions // ignore: cast_nullable_to_non_nullable
              as Actions?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Reactions implements _Reactions {
  const _$_Reactions(
      {required this.reaction,
      required this.reactions,
      required this.ractions});

  factory _$_Reactions.fromJson(Map<String, dynamic> json) =>
      _$_$_ReactionsFromJson(json);

  @override
  final Reaction? reaction;
  @override
  final Actions? reactions;
  @override
  final Actions? ractions;

  @override
  String toString() {
    return 'Reactions(reaction: $reaction, reactions: $reactions, ractions: $ractions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Reactions &&
            (identical(other.reaction, reaction) ||
                const DeepCollectionEquality()
                    .equals(other.reaction, reaction)) &&
            (identical(other.reactions, reactions) ||
                const DeepCollectionEquality()
                    .equals(other.reactions, reactions)) &&
            (identical(other.ractions, ractions) ||
                const DeepCollectionEquality()
                    .equals(other.ractions, ractions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(reaction) ^
      const DeepCollectionEquality().hash(reactions) ^
      const DeepCollectionEquality().hash(ractions);

  @JsonKey(ignore: true)
  @override
  _$ReactionsCopyWith<_Reactions> get copyWith =>
      __$ReactionsCopyWithImpl<_Reactions>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ReactionsToJson(this);
  }
}

abstract class _Reactions implements Reactions {
  const factory _Reactions(
      {required Reaction? reaction,
      required Actions? reactions,
      required Actions? ractions}) = _$_Reactions;

  factory _Reactions.fromJson(Map<String, dynamic> json) =
      _$_Reactions.fromJson;

  @override
  Reaction? get reaction => throw _privateConstructorUsedError;
  @override
  Actions? get reactions => throw _privateConstructorUsedError;
  @override
  Actions? get ractions => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ReactionsCopyWith<_Reactions> get copyWith =>
      throw _privateConstructorUsedError;
}

Actions _$ActionsFromJson(Map<String, dynamic> json) {
  return _Actions.fromJson(json);
}

/// @nodoc
class _$ActionsTearOff {
  const _$ActionsTearOff();

  _Actions call(
      {required Angry? LIKE,
      required Angry? HAPPY,
      required Angry? WOW,
      required Angry? LOVE,
      required Angry? SAD,
      required Angry? ANGRY,
      required int? total}) {
    return _Actions(
      LIKE: LIKE,
      HAPPY: HAPPY,
      WOW: WOW,
      LOVE: LOVE,
      SAD: SAD,
      ANGRY: ANGRY,
      total: total,
    );
  }

  Actions fromJson(Map<String, Object> json) {
    return Actions.fromJson(json);
  }
}

/// @nodoc
const $Actions = _$ActionsTearOff();

/// @nodoc
mixin _$Actions {
  Angry? get LIKE => throw _privateConstructorUsedError;
  Angry? get HAPPY => throw _privateConstructorUsedError;
  Angry? get WOW => throw _privateConstructorUsedError;
  Angry? get LOVE => throw _privateConstructorUsedError;
  Angry? get SAD => throw _privateConstructorUsedError;
  Angry? get ANGRY => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActionsCopyWith<Actions> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActionsCopyWith<$Res> {
  factory $ActionsCopyWith(Actions value, $Res Function(Actions) then) =
      _$ActionsCopyWithImpl<$Res>;
  $Res call(
      {Angry? LIKE,
      Angry? HAPPY,
      Angry? WOW,
      Angry? LOVE,
      Angry? SAD,
      Angry? ANGRY,
      int? total});

  $AngryCopyWith<$Res>? get LIKE;
  $AngryCopyWith<$Res>? get HAPPY;
  $AngryCopyWith<$Res>? get WOW;
  $AngryCopyWith<$Res>? get LOVE;
  $AngryCopyWith<$Res>? get SAD;
  $AngryCopyWith<$Res>? get ANGRY;
}

/// @nodoc
class _$ActionsCopyWithImpl<$Res> implements $ActionsCopyWith<$Res> {
  _$ActionsCopyWithImpl(this._value, this._then);

  final Actions _value;
  // ignore: unused_field
  final $Res Function(Actions) _then;

  @override
  $Res call({
    Object? LIKE = freezed,
    Object? HAPPY = freezed,
    Object? WOW = freezed,
    Object? LOVE = freezed,
    Object? SAD = freezed,
    Object? ANGRY = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      LIKE: LIKE == freezed
          ? _value.LIKE
          : LIKE // ignore: cast_nullable_to_non_nullable
              as Angry?,
      HAPPY: HAPPY == freezed
          ? _value.HAPPY
          : HAPPY // ignore: cast_nullable_to_non_nullable
              as Angry?,
      WOW: WOW == freezed
          ? _value.WOW
          : WOW // ignore: cast_nullable_to_non_nullable
              as Angry?,
      LOVE: LOVE == freezed
          ? _value.LOVE
          : LOVE // ignore: cast_nullable_to_non_nullable
              as Angry?,
      SAD: SAD == freezed
          ? _value.SAD
          : SAD // ignore: cast_nullable_to_non_nullable
              as Angry?,
      ANGRY: ANGRY == freezed
          ? _value.ANGRY
          : ANGRY // ignore: cast_nullable_to_non_nullable
              as Angry?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  @override
  $AngryCopyWith<$Res>? get LIKE {
    if (_value.LIKE == null) {
      return null;
    }

    return $AngryCopyWith<$Res>(_value.LIKE!, (value) {
      return _then(_value.copyWith(LIKE: value));
    });
  }

  @override
  $AngryCopyWith<$Res>? get HAPPY {
    if (_value.HAPPY == null) {
      return null;
    }

    return $AngryCopyWith<$Res>(_value.HAPPY!, (value) {
      return _then(_value.copyWith(HAPPY: value));
    });
  }

  @override
  $AngryCopyWith<$Res>? get WOW {
    if (_value.WOW == null) {
      return null;
    }

    return $AngryCopyWith<$Res>(_value.WOW!, (value) {
      return _then(_value.copyWith(WOW: value));
    });
  }

  @override
  $AngryCopyWith<$Res>? get LOVE {
    if (_value.LOVE == null) {
      return null;
    }

    return $AngryCopyWith<$Res>(_value.LOVE!, (value) {
      return _then(_value.copyWith(LOVE: value));
    });
  }

  @override
  $AngryCopyWith<$Res>? get SAD {
    if (_value.SAD == null) {
      return null;
    }

    return $AngryCopyWith<$Res>(_value.SAD!, (value) {
      return _then(_value.copyWith(SAD: value));
    });
  }

  @override
  $AngryCopyWith<$Res>? get ANGRY {
    if (_value.ANGRY == null) {
      return null;
    }

    return $AngryCopyWith<$Res>(_value.ANGRY!, (value) {
      return _then(_value.copyWith(ANGRY: value));
    });
  }
}

/// @nodoc
abstract class _$ActionsCopyWith<$Res> implements $ActionsCopyWith<$Res> {
  factory _$ActionsCopyWith(_Actions value, $Res Function(_Actions) then) =
      __$ActionsCopyWithImpl<$Res>;
  @override
  $Res call(
      {Angry? LIKE,
      Angry? HAPPY,
      Angry? WOW,
      Angry? LOVE,
      Angry? SAD,
      Angry? ANGRY,
      int? total});

  @override
  $AngryCopyWith<$Res>? get LIKE;
  @override
  $AngryCopyWith<$Res>? get HAPPY;
  @override
  $AngryCopyWith<$Res>? get WOW;
  @override
  $AngryCopyWith<$Res>? get LOVE;
  @override
  $AngryCopyWith<$Res>? get SAD;
  @override
  $AngryCopyWith<$Res>? get ANGRY;
}

/// @nodoc
class __$ActionsCopyWithImpl<$Res> extends _$ActionsCopyWithImpl<$Res>
    implements _$ActionsCopyWith<$Res> {
  __$ActionsCopyWithImpl(_Actions _value, $Res Function(_Actions) _then)
      : super(_value, (v) => _then(v as _Actions));

  @override
  _Actions get _value => super._value as _Actions;

  @override
  $Res call({
    Object? LIKE = freezed,
    Object? HAPPY = freezed,
    Object? WOW = freezed,
    Object? LOVE = freezed,
    Object? SAD = freezed,
    Object? ANGRY = freezed,
    Object? total = freezed,
  }) {
    return _then(_Actions(
      LIKE: LIKE == freezed
          ? _value.LIKE
          : LIKE // ignore: cast_nullable_to_non_nullable
              as Angry?,
      HAPPY: HAPPY == freezed
          ? _value.HAPPY
          : HAPPY // ignore: cast_nullable_to_non_nullable
              as Angry?,
      WOW: WOW == freezed
          ? _value.WOW
          : WOW // ignore: cast_nullable_to_non_nullable
              as Angry?,
      LOVE: LOVE == freezed
          ? _value.LOVE
          : LOVE // ignore: cast_nullable_to_non_nullable
              as Angry?,
      SAD: SAD == freezed
          ? _value.SAD
          : SAD // ignore: cast_nullable_to_non_nullable
              as Angry?,
      ANGRY: ANGRY == freezed
          ? _value.ANGRY
          : ANGRY // ignore: cast_nullable_to_non_nullable
              as Angry?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Actions implements _Actions {
  const _$_Actions(
      {required this.LIKE,
      required this.HAPPY,
      required this.WOW,
      required this.LOVE,
      required this.SAD,
      required this.ANGRY,
      required this.total});

  factory _$_Actions.fromJson(Map<String, dynamic> json) =>
      _$_$_ActionsFromJson(json);

  @override
  final Angry? LIKE;
  @override
  final Angry? HAPPY;
  @override
  final Angry? WOW;
  @override
  final Angry? LOVE;
  @override
  final Angry? SAD;
  @override
  final Angry? ANGRY;
  @override
  final int? total;

  @override
  String toString() {
    return 'Actions(LIKE: $LIKE, HAPPY: $HAPPY, WOW: $WOW, LOVE: $LOVE, SAD: $SAD, ANGRY: $ANGRY, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Actions &&
            (identical(other.LIKE, LIKE) ||
                const DeepCollectionEquality().equals(other.LIKE, LIKE)) &&
            (identical(other.HAPPY, HAPPY) ||
                const DeepCollectionEquality().equals(other.HAPPY, HAPPY)) &&
            (identical(other.WOW, WOW) ||
                const DeepCollectionEquality().equals(other.WOW, WOW)) &&
            (identical(other.LOVE, LOVE) ||
                const DeepCollectionEquality().equals(other.LOVE, LOVE)) &&
            (identical(other.SAD, SAD) ||
                const DeepCollectionEquality().equals(other.SAD, SAD)) &&
            (identical(other.ANGRY, ANGRY) ||
                const DeepCollectionEquality().equals(other.ANGRY, ANGRY)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(LIKE) ^
      const DeepCollectionEquality().hash(HAPPY) ^
      const DeepCollectionEquality().hash(WOW) ^
      const DeepCollectionEquality().hash(LOVE) ^
      const DeepCollectionEquality().hash(SAD) ^
      const DeepCollectionEquality().hash(ANGRY) ^
      const DeepCollectionEquality().hash(total);

  @JsonKey(ignore: true)
  @override
  _$ActionsCopyWith<_Actions> get copyWith =>
      __$ActionsCopyWithImpl<_Actions>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ActionsToJson(this);
  }
}

abstract class _Actions implements Actions {
  const factory _Actions(
      {required Angry? LIKE,
      required Angry? HAPPY,
      required Angry? WOW,
      required Angry? LOVE,
      required Angry? SAD,
      required Angry? ANGRY,
      required int? total}) = _$_Actions;

  factory _Actions.fromJson(Map<String, dynamic> json) = _$_Actions.fromJson;

  @override
  Angry? get LIKE => throw _privateConstructorUsedError;
  @override
  Angry? get HAPPY => throw _privateConstructorUsedError;
  @override
  Angry? get WOW => throw _privateConstructorUsedError;
  @override
  Angry? get LOVE => throw _privateConstructorUsedError;
  @override
  Angry? get SAD => throw _privateConstructorUsedError;
  @override
  Angry? get ANGRY => throw _privateConstructorUsedError;
  @override
  int? get total => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ActionsCopyWith<_Actions> get copyWith =>
      throw _privateConstructorUsedError;
}

Angry _$AngryFromJson(Map<String, dynamic> json) {
  return _Angry.fromJson(json);
}

/// @nodoc
class _$AngryTearOff {
  const _$AngryTearOff();

  _Angry call({required int? count, required double? percentage}) {
    return _Angry(
      count: count,
      percentage: percentage,
    );
  }

  Angry fromJson(Map<String, Object> json) {
    return Angry.fromJson(json);
  }
}

/// @nodoc
const $Angry = _$AngryTearOff();

/// @nodoc
mixin _$Angry {
  int? get count => throw _privateConstructorUsedError;
  double? get percentage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AngryCopyWith<Angry> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AngryCopyWith<$Res> {
  factory $AngryCopyWith(Angry value, $Res Function(Angry) then) =
      _$AngryCopyWithImpl<$Res>;
  $Res call({int? count, double? percentage});
}

/// @nodoc
class _$AngryCopyWithImpl<$Res> implements $AngryCopyWith<$Res> {
  _$AngryCopyWithImpl(this._value, this._then);

  final Angry _value;
  // ignore: unused_field
  final $Res Function(Angry) _then;

  @override
  $Res call({
    Object? count = freezed,
    Object? percentage = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      percentage: percentage == freezed
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$AngryCopyWith<$Res> implements $AngryCopyWith<$Res> {
  factory _$AngryCopyWith(_Angry value, $Res Function(_Angry) then) =
      __$AngryCopyWithImpl<$Res>;
  @override
  $Res call({int? count, double? percentage});
}

/// @nodoc
class __$AngryCopyWithImpl<$Res> extends _$AngryCopyWithImpl<$Res>
    implements _$AngryCopyWith<$Res> {
  __$AngryCopyWithImpl(_Angry _value, $Res Function(_Angry) _then)
      : super(_value, (v) => _then(v as _Angry));

  @override
  _Angry get _value => super._value as _Angry;

  @override
  $Res call({
    Object? count = freezed,
    Object? percentage = freezed,
  }) {
    return _then(_Angry(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      percentage: percentage == freezed
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Angry implements _Angry {
  const _$_Angry({required this.count, required this.percentage});

  factory _$_Angry.fromJson(Map<String, dynamic> json) =>
      _$_$_AngryFromJson(json);

  @override
  final int? count;
  @override
  final double? percentage;

  @override
  String toString() {
    return 'Angry(count: $count, percentage: $percentage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Angry &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.percentage, percentage) ||
                const DeepCollectionEquality()
                    .equals(other.percentage, percentage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(percentage);

  @JsonKey(ignore: true)
  @override
  _$AngryCopyWith<_Angry> get copyWith =>
      __$AngryCopyWithImpl<_Angry>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AngryToJson(this);
  }
}

abstract class _Angry implements Angry {
  const factory _Angry({required int? count, required double? percentage}) =
      _$_Angry;

  factory _Angry.fromJson(Map<String, dynamic> json) = _$_Angry.fromJson;

  @override
  int? get count => throw _privateConstructorUsedError;
  @override
  double? get percentage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AngryCopyWith<_Angry> get copyWith => throw _privateConstructorUsedError;
}

Reaction _$ReactionFromJson(Map<String, dynamic> json) {
  return _Reaction.fromJson(json);
}

/// @nodoc
class _$ReactionTearOff {
  const _$ReactionTearOff();

  _Reaction call({required String? reaction, required int? reaction_id}) {
    return _Reaction(
      reaction: reaction,
      reaction_id: reaction_id,
    );
  }

  Reaction fromJson(Map<String, Object> json) {
    return Reaction.fromJson(json);
  }
}

/// @nodoc
const $Reaction = _$ReactionTearOff();

/// @nodoc
mixin _$Reaction {
  String? get reaction => throw _privateConstructorUsedError;
  int? get reaction_id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReactionCopyWith<Reaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReactionCopyWith<$Res> {
  factory $ReactionCopyWith(Reaction value, $Res Function(Reaction) then) =
      _$ReactionCopyWithImpl<$Res>;
  $Res call({String? reaction, int? reaction_id});
}

/// @nodoc
class _$ReactionCopyWithImpl<$Res> implements $ReactionCopyWith<$Res> {
  _$ReactionCopyWithImpl(this._value, this._then);

  final Reaction _value;
  // ignore: unused_field
  final $Res Function(Reaction) _then;

  @override
  $Res call({
    Object? reaction = freezed,
    Object? reaction_id = freezed,
  }) {
    return _then(_value.copyWith(
      reaction: reaction == freezed
          ? _value.reaction
          : reaction // ignore: cast_nullable_to_non_nullable
              as String?,
      reaction_id: reaction_id == freezed
          ? _value.reaction_id
          : reaction_id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$ReactionCopyWith<$Res> implements $ReactionCopyWith<$Res> {
  factory _$ReactionCopyWith(_Reaction value, $Res Function(_Reaction) then) =
      __$ReactionCopyWithImpl<$Res>;
  @override
  $Res call({String? reaction, int? reaction_id});
}

/// @nodoc
class __$ReactionCopyWithImpl<$Res> extends _$ReactionCopyWithImpl<$Res>
    implements _$ReactionCopyWith<$Res> {
  __$ReactionCopyWithImpl(_Reaction _value, $Res Function(_Reaction) _then)
      : super(_value, (v) => _then(v as _Reaction));

  @override
  _Reaction get _value => super._value as _Reaction;

  @override
  $Res call({
    Object? reaction = freezed,
    Object? reaction_id = freezed,
  }) {
    return _then(_Reaction(
      reaction: reaction == freezed
          ? _value.reaction
          : reaction // ignore: cast_nullable_to_non_nullable
              as String?,
      reaction_id: reaction_id == freezed
          ? _value.reaction_id
          : reaction_id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Reaction implements _Reaction {
  const _$_Reaction({required this.reaction, required this.reaction_id});

  factory _$_Reaction.fromJson(Map<String, dynamic> json) =>
      _$_$_ReactionFromJson(json);

  @override
  final String? reaction;
  @override
  final int? reaction_id;

  @override
  String toString() {
    return 'Reaction(reaction: $reaction, reaction_id: $reaction_id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Reaction &&
            (identical(other.reaction, reaction) ||
                const DeepCollectionEquality()
                    .equals(other.reaction, reaction)) &&
            (identical(other.reaction_id, reaction_id) ||
                const DeepCollectionEquality()
                    .equals(other.reaction_id, reaction_id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(reaction) ^
      const DeepCollectionEquality().hash(reaction_id);

  @JsonKey(ignore: true)
  @override
  _$ReactionCopyWith<_Reaction> get copyWith =>
      __$ReactionCopyWithImpl<_Reaction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ReactionToJson(this);
  }
}

abstract class _Reaction implements Reaction {
  const factory _Reaction(
      {required String? reaction, required int? reaction_id}) = _$_Reaction;

  factory _Reaction.fromJson(Map<String, dynamic> json) = _$_Reaction.fromJson;

  @override
  String? get reaction => throw _privateConstructorUsedError;
  @override
  int? get reaction_id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ReactionCopyWith<_Reaction> get copyWith =>
      throw _privateConstructorUsedError;
}

Links _$LinksFromJson(Map<String, dynamic> json) {
  return _Links.fromJson(json);
}

/// @nodoc
class _$LinksTearOff {
  const _$LinksTearOff();

  _Links call(
      {required String? first,
      required String? last,
      required String? prev,
      required String? next}) {
    return _Links(
      first: first,
      last: last,
      prev: prev,
      next: next,
    );
  }

  Links fromJson(Map<String, Object> json) {
    return Links.fromJson(json);
  }
}

/// @nodoc
const $Links = _$LinksTearOff();

/// @nodoc
mixin _$Links {
  String? get first => throw _privateConstructorUsedError;
  String? get last => throw _privateConstructorUsedError;
  String? get prev => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LinksCopyWith<Links> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinksCopyWith<$Res> {
  factory $LinksCopyWith(Links value, $Res Function(Links) then) =
      _$LinksCopyWithImpl<$Res>;
  $Res call({String? first, String? last, String? prev, String? next});
}

/// @nodoc
class _$LinksCopyWithImpl<$Res> implements $LinksCopyWith<$Res> {
  _$LinksCopyWithImpl(this._value, this._then);

  final Links _value;
  // ignore: unused_field
  final $Res Function(Links) _then;

  @override
  $Res call({
    Object? first = freezed,
    Object? last = freezed,
    Object? prev = freezed,
    Object? next = freezed,
  }) {
    return _then(_value.copyWith(
      first: first == freezed
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as String?,
      last: last == freezed
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as String?,
      prev: prev == freezed
          ? _value.prev
          : prev // ignore: cast_nullable_to_non_nullable
              as String?,
      next: next == freezed
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$LinksCopyWith<$Res> implements $LinksCopyWith<$Res> {
  factory _$LinksCopyWith(_Links value, $Res Function(_Links) then) =
      __$LinksCopyWithImpl<$Res>;
  @override
  $Res call({String? first, String? last, String? prev, String? next});
}

/// @nodoc
class __$LinksCopyWithImpl<$Res> extends _$LinksCopyWithImpl<$Res>
    implements _$LinksCopyWith<$Res> {
  __$LinksCopyWithImpl(_Links _value, $Res Function(_Links) _then)
      : super(_value, (v) => _then(v as _Links));

  @override
  _Links get _value => super._value as _Links;

  @override
  $Res call({
    Object? first = freezed,
    Object? last = freezed,
    Object? prev = freezed,
    Object? next = freezed,
  }) {
    return _then(_Links(
      first: first == freezed
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as String?,
      last: last == freezed
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as String?,
      prev: prev == freezed
          ? _value.prev
          : prev // ignore: cast_nullable_to_non_nullable
              as String?,
      next: next == freezed
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Links implements _Links {
  const _$_Links(
      {required this.first,
      required this.last,
      required this.prev,
      required this.next});

  factory _$_Links.fromJson(Map<String, dynamic> json) =>
      _$_$_LinksFromJson(json);

  @override
  final String? first;
  @override
  final String? last;
  @override
  final String? prev;
  @override
  final String? next;

  @override
  String toString() {
    return 'Links(first: $first, last: $last, prev: $prev, next: $next)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Links &&
            (identical(other.first, first) ||
                const DeepCollectionEquality().equals(other.first, first)) &&
            (identical(other.last, last) ||
                const DeepCollectionEquality().equals(other.last, last)) &&
            (identical(other.prev, prev) ||
                const DeepCollectionEquality().equals(other.prev, prev)) &&
            (identical(other.next, next) ||
                const DeepCollectionEquality().equals(other.next, next)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(first) ^
      const DeepCollectionEquality().hash(last) ^
      const DeepCollectionEquality().hash(prev) ^
      const DeepCollectionEquality().hash(next);

  @JsonKey(ignore: true)
  @override
  _$LinksCopyWith<_Links> get copyWith =>
      __$LinksCopyWithImpl<_Links>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LinksToJson(this);
  }
}

abstract class _Links implements Links {
  const factory _Links(
      {required String? first,
      required String? last,
      required String? prev,
      required String? next}) = _$_Links;

  factory _Links.fromJson(Map<String, dynamic> json) = _$_Links.fromJson;

  @override
  String? get first => throw _privateConstructorUsedError;
  @override
  String? get last => throw _privateConstructorUsedError;
  @override
  String? get prev => throw _privateConstructorUsedError;
  @override
  String? get next => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LinksCopyWith<_Links> get copyWith => throw _privateConstructorUsedError;
}

Meta _$MetaFromJson(Map<String, dynamic> json) {
  return _Meta.fromJson(json);
}

/// @nodoc
class _$MetaTearOff {
  const _$MetaTearOff();

  _Meta call(
      {required int? current_page,
      required int? from,
      required int? last_page,
      required List<LinkElement>? links,
      required String? path,
      required String? per_page,
      required int? to,
      required int? total}) {
    return _Meta(
      current_page: current_page,
      from: from,
      last_page: last_page,
      links: links,
      path: path,
      per_page: per_page,
      to: to,
      total: total,
    );
  }

  Meta fromJson(Map<String, Object> json) {
    return Meta.fromJson(json);
  }
}

/// @nodoc
const $Meta = _$MetaTearOff();

/// @nodoc
mixin _$Meta {
  int? get current_page => throw _privateConstructorUsedError;
  int? get from => throw _privateConstructorUsedError;
  int? get last_page => throw _privateConstructorUsedError;
  List<LinkElement>? get links => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;
  String? get per_page => throw _privateConstructorUsedError;
  int? get to => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetaCopyWith<Meta> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaCopyWith<$Res> {
  factory $MetaCopyWith(Meta value, $Res Function(Meta) then) =
      _$MetaCopyWithImpl<$Res>;
  $Res call(
      {int? current_page,
      int? from,
      int? last_page,
      List<LinkElement>? links,
      String? path,
      String? per_page,
      int? to,
      int? total});
}

/// @nodoc
class _$MetaCopyWithImpl<$Res> implements $MetaCopyWith<$Res> {
  _$MetaCopyWithImpl(this._value, this._then);

  final Meta _value;
  // ignore: unused_field
  final $Res Function(Meta) _then;

  @override
  $Res call({
    Object? current_page = freezed,
    Object? from = freezed,
    Object? last_page = freezed,
    Object? links = freezed,
    Object? path = freezed,
    Object? per_page = freezed,
    Object? to = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      current_page: current_page == freezed
          ? _value.current_page
          : current_page // ignore: cast_nullable_to_non_nullable
              as int?,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      last_page: last_page == freezed
          ? _value.last_page
          : last_page // ignore: cast_nullable_to_non_nullable
              as int?,
      links: links == freezed
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as List<LinkElement>?,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      per_page: per_page == freezed
          ? _value.per_page
          : per_page // ignore: cast_nullable_to_non_nullable
              as String?,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$MetaCopyWith<$Res> implements $MetaCopyWith<$Res> {
  factory _$MetaCopyWith(_Meta value, $Res Function(_Meta) then) =
      __$MetaCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? current_page,
      int? from,
      int? last_page,
      List<LinkElement>? links,
      String? path,
      String? per_page,
      int? to,
      int? total});
}

/// @nodoc
class __$MetaCopyWithImpl<$Res> extends _$MetaCopyWithImpl<$Res>
    implements _$MetaCopyWith<$Res> {
  __$MetaCopyWithImpl(_Meta _value, $Res Function(_Meta) _then)
      : super(_value, (v) => _then(v as _Meta));

  @override
  _Meta get _value => super._value as _Meta;

  @override
  $Res call({
    Object? current_page = freezed,
    Object? from = freezed,
    Object? last_page = freezed,
    Object? links = freezed,
    Object? path = freezed,
    Object? per_page = freezed,
    Object? to = freezed,
    Object? total = freezed,
  }) {
    return _then(_Meta(
      current_page: current_page == freezed
          ? _value.current_page
          : current_page // ignore: cast_nullable_to_non_nullable
              as int?,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      last_page: last_page == freezed
          ? _value.last_page
          : last_page // ignore: cast_nullable_to_non_nullable
              as int?,
      links: links == freezed
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as List<LinkElement>?,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      per_page: per_page == freezed
          ? _value.per_page
          : per_page // ignore: cast_nullable_to_non_nullable
              as String?,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Meta implements _Meta {
  const _$_Meta(
      {required this.current_page,
      required this.from,
      required this.last_page,
      required this.links,
      required this.path,
      required this.per_page,
      required this.to,
      required this.total});

  factory _$_Meta.fromJson(Map<String, dynamic> json) =>
      _$_$_MetaFromJson(json);

  @override
  final int? current_page;
  @override
  final int? from;
  @override
  final int? last_page;
  @override
  final List<LinkElement>? links;
  @override
  final String? path;
  @override
  final String? per_page;
  @override
  final int? to;
  @override
  final int? total;

  @override
  String toString() {
    return 'Meta(current_page: $current_page, from: $from, last_page: $last_page, links: $links, path: $path, per_page: $per_page, to: $to, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Meta &&
            (identical(other.current_page, current_page) ||
                const DeepCollectionEquality()
                    .equals(other.current_page, current_page)) &&
            (identical(other.from, from) ||
                const DeepCollectionEquality().equals(other.from, from)) &&
            (identical(other.last_page, last_page) ||
                const DeepCollectionEquality()
                    .equals(other.last_page, last_page)) &&
            (identical(other.links, links) ||
                const DeepCollectionEquality().equals(other.links, links)) &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)) &&
            (identical(other.per_page, per_page) ||
                const DeepCollectionEquality()
                    .equals(other.per_page, per_page)) &&
            (identical(other.to, to) ||
                const DeepCollectionEquality().equals(other.to, to)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(current_page) ^
      const DeepCollectionEquality().hash(from) ^
      const DeepCollectionEquality().hash(last_page) ^
      const DeepCollectionEquality().hash(links) ^
      const DeepCollectionEquality().hash(path) ^
      const DeepCollectionEquality().hash(per_page) ^
      const DeepCollectionEquality().hash(to) ^
      const DeepCollectionEquality().hash(total);

  @JsonKey(ignore: true)
  @override
  _$MetaCopyWith<_Meta> get copyWith =>
      __$MetaCopyWithImpl<_Meta>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MetaToJson(this);
  }
}

abstract class _Meta implements Meta {
  const factory _Meta(
      {required int? current_page,
      required int? from,
      required int? last_page,
      required List<LinkElement>? links,
      required String? path,
      required String? per_page,
      required int? to,
      required int? total}) = _$_Meta;

  factory _Meta.fromJson(Map<String, dynamic> json) = _$_Meta.fromJson;

  @override
  int? get current_page => throw _privateConstructorUsedError;
  @override
  int? get from => throw _privateConstructorUsedError;
  @override
  int? get last_page => throw _privateConstructorUsedError;
  @override
  List<LinkElement>? get links => throw _privateConstructorUsedError;
  @override
  String? get path => throw _privateConstructorUsedError;
  @override
  String? get per_page => throw _privateConstructorUsedError;
  @override
  int? get to => throw _privateConstructorUsedError;
  @override
  int? get total => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MetaCopyWith<_Meta> get copyWith => throw _privateConstructorUsedError;
}

LinkElement _$LinkElementFromJson(Map<String, dynamic> json) {
  return _LinkElement.fromJson(json);
}

/// @nodoc
class _$LinkElementTearOff {
  const _$LinkElementTearOff();

  _LinkElement call(
      {required String? url, required String? label, required bool? active}) {
    return _LinkElement(
      url: url,
      label: label,
      active: active,
    );
  }

  LinkElement fromJson(Map<String, Object> json) {
    return LinkElement.fromJson(json);
  }
}

/// @nodoc
const $LinkElement = _$LinkElementTearOff();

/// @nodoc
mixin _$LinkElement {
  String? get url => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;
  bool? get active => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LinkElementCopyWith<LinkElement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinkElementCopyWith<$Res> {
  factory $LinkElementCopyWith(
          LinkElement value, $Res Function(LinkElement) then) =
      _$LinkElementCopyWithImpl<$Res>;
  $Res call({String? url, String? label, bool? active});
}

/// @nodoc
class _$LinkElementCopyWithImpl<$Res> implements $LinkElementCopyWith<$Res> {
  _$LinkElementCopyWithImpl(this._value, this._then);

  final LinkElement _value;
  // ignore: unused_field
  final $Res Function(LinkElement) _then;

  @override
  $Res call({
    Object? url = freezed,
    Object? label = freezed,
    Object? active = freezed,
  }) {
    return _then(_value.copyWith(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$LinkElementCopyWith<$Res>
    implements $LinkElementCopyWith<$Res> {
  factory _$LinkElementCopyWith(
          _LinkElement value, $Res Function(_LinkElement) then) =
      __$LinkElementCopyWithImpl<$Res>;
  @override
  $Res call({String? url, String? label, bool? active});
}

/// @nodoc
class __$LinkElementCopyWithImpl<$Res> extends _$LinkElementCopyWithImpl<$Res>
    implements _$LinkElementCopyWith<$Res> {
  __$LinkElementCopyWithImpl(
      _LinkElement _value, $Res Function(_LinkElement) _then)
      : super(_value, (v) => _then(v as _LinkElement));

  @override
  _LinkElement get _value => super._value as _LinkElement;

  @override
  $Res call({
    Object? url = freezed,
    Object? label = freezed,
    Object? active = freezed,
  }) {
    return _then(_LinkElement(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LinkElement implements _LinkElement {
  const _$_LinkElement(
      {required this.url, required this.label, required this.active});

  factory _$_LinkElement.fromJson(Map<String, dynamic> json) =>
      _$_$_LinkElementFromJson(json);

  @override
  final String? url;
  @override
  final String? label;
  @override
  final bool? active;

  @override
  String toString() {
    return 'LinkElement(url: $url, label: $label, active: $active)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LinkElement &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)) &&
            (identical(other.active, active) ||
                const DeepCollectionEquality().equals(other.active, active)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(label) ^
      const DeepCollectionEquality().hash(active);

  @JsonKey(ignore: true)
  @override
  _$LinkElementCopyWith<_LinkElement> get copyWith =>
      __$LinkElementCopyWithImpl<_LinkElement>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LinkElementToJson(this);
  }
}

abstract class _LinkElement implements LinkElement {
  const factory _LinkElement(
      {required String? url,
      required String? label,
      required bool? active}) = _$_LinkElement;

  factory _LinkElement.fromJson(Map<String, dynamic> json) =
      _$_LinkElement.fromJson;

  @override
  String? get url => throw _privateConstructorUsedError;
  @override
  String? get label => throw _privateConstructorUsedError;
  @override
  bool? get active => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LinkElementCopyWith<_LinkElement> get copyWith =>
      throw _privateConstructorUsedError;
}
