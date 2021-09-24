// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'NewsCommentsModel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewsCommentsModel _$NewsCommentsModelFromJson(Map<String, dynamic> json) {
  return _NewsCommentsModel.fromJson(json);
}

/// @nodoc
class _$NewsCommentsModelTearOff {
  const _$NewsCommentsModelTearOff();

  _NewsCommentsModel call(
      {required List<Datum>? data,
      required Links? links,
      required Meta? meta}) {
    return _NewsCommentsModel(
      data: data,
      links: links,
      meta: meta,
    );
  }

  NewsCommentsModel fromJson(Map<String, Object> json) {
    return NewsCommentsModel.fromJson(json);
  }
}

/// @nodoc
const $NewsCommentsModel = _$NewsCommentsModelTearOff();

/// @nodoc
mixin _$NewsCommentsModel {
  List<Datum>? get data => throw _privateConstructorUsedError;
  Links? get links => throw _privateConstructorUsedError;
  Meta? get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsCommentsModelCopyWith<NewsCommentsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsCommentsModelCopyWith<$Res> {
  factory $NewsCommentsModelCopyWith(
          NewsCommentsModel value, $Res Function(NewsCommentsModel) then) =
      _$NewsCommentsModelCopyWithImpl<$Res>;
  $Res call({List<Datum>? data, Links? links, Meta? meta});

  $LinksCopyWith<$Res>? get links;
  $MetaCopyWith<$Res>? get meta;
}

/// @nodoc
class _$NewsCommentsModelCopyWithImpl<$Res>
    implements $NewsCommentsModelCopyWith<$Res> {
  _$NewsCommentsModelCopyWithImpl(this._value, this._then);

  final NewsCommentsModel _value;
  // ignore: unused_field
  final $Res Function(NewsCommentsModel) _then;

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
abstract class _$NewsCommentsModelCopyWith<$Res>
    implements $NewsCommentsModelCopyWith<$Res> {
  factory _$NewsCommentsModelCopyWith(
          _NewsCommentsModel value, $Res Function(_NewsCommentsModel) then) =
      __$NewsCommentsModelCopyWithImpl<$Res>;
  @override
  $Res call({List<Datum>? data, Links? links, Meta? meta});

  @override
  $LinksCopyWith<$Res>? get links;
  @override
  $MetaCopyWith<$Res>? get meta;
}

/// @nodoc
class __$NewsCommentsModelCopyWithImpl<$Res>
    extends _$NewsCommentsModelCopyWithImpl<$Res>
    implements _$NewsCommentsModelCopyWith<$Res> {
  __$NewsCommentsModelCopyWithImpl(
      _NewsCommentsModel _value, $Res Function(_NewsCommentsModel) _then)
      : super(_value, (v) => _then(v as _NewsCommentsModel));

  @override
  _NewsCommentsModel get _value => super._value as _NewsCommentsModel;

  @override
  $Res call({
    Object? data = freezed,
    Object? links = freezed,
    Object? meta = freezed,
  }) {
    return _then(_NewsCommentsModel(
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
class _$_NewsCommentsModel implements _NewsCommentsModel {
  const _$_NewsCommentsModel(
      {required this.data, required this.links, required this.meta});

  factory _$_NewsCommentsModel.fromJson(Map<String, dynamic> json) =>
      _$_$_NewsCommentsModelFromJson(json);

  @override
  final List<Datum>? data;
  @override
  final Links? links;
  @override
  final Meta? meta;

  @override
  String toString() {
    return 'NewsCommentsModel(data: $data, links: $links, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NewsCommentsModel &&
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
  _$NewsCommentsModelCopyWith<_NewsCommentsModel> get copyWith =>
      __$NewsCommentsModelCopyWithImpl<_NewsCommentsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NewsCommentsModelToJson(this);
  }
}

abstract class _NewsCommentsModel implements NewsCommentsModel {
  const factory _NewsCommentsModel(
      {required List<Datum>? data,
      required Links? links,
      required Meta? meta}) = _$_NewsCommentsModel;

  factory _NewsCommentsModel.fromJson(Map<String, dynamic> json) =
      _$_NewsCommentsModel.fromJson;

  @override
  List<Datum>? get data => throw _privateConstructorUsedError;
  @override
  Links? get links => throw _privateConstructorUsedError;
  @override
  Meta? get meta => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NewsCommentsModelCopyWith<_NewsCommentsModel> get copyWith =>
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
      required String? comment,
      required String? commenter_name,
      required String? commenter_username,
      required int? replies_count,
      required String? commenter_image,
      required DateTime? created_at,
      required String? ommenter_image}) {
    return _Datum(
      id: id,
      comment: comment,
      commenter_name: commenter_name,
      commenter_username: commenter_username,
      replies_count: replies_count,
      commenter_image: commenter_image,
      created_at: created_at,
      ommenter_image: ommenter_image,
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
  String? get comment => throw _privateConstructorUsedError;
  String? get commenter_name => throw _privateConstructorUsedError;
  String? get commenter_username => throw _privateConstructorUsedError;
  int? get replies_count => throw _privateConstructorUsedError;
  String? get commenter_image => throw _privateConstructorUsedError;
  DateTime? get created_at => throw _privateConstructorUsedError;
  String? get ommenter_image => throw _privateConstructorUsedError;

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
      String? comment,
      String? commenter_name,
      String? commenter_username,
      int? replies_count,
      String? commenter_image,
      DateTime? created_at,
      String? ommenter_image});
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
    Object? comment = freezed,
    Object? commenter_name = freezed,
    Object? commenter_username = freezed,
    Object? replies_count = freezed,
    Object? commenter_image = freezed,
    Object? created_at = freezed,
    Object? ommenter_image = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      commenter_name: commenter_name == freezed
          ? _value.commenter_name
          : commenter_name // ignore: cast_nullable_to_non_nullable
              as String?,
      commenter_username: commenter_username == freezed
          ? _value.commenter_username
          : commenter_username // ignore: cast_nullable_to_non_nullable
              as String?,
      replies_count: replies_count == freezed
          ? _value.replies_count
          : replies_count // ignore: cast_nullable_to_non_nullable
              as int?,
      commenter_image: commenter_image == freezed
          ? _value.commenter_image
          : commenter_image // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      ommenter_image: ommenter_image == freezed
          ? _value.ommenter_image
          : ommenter_image // ignore: cast_nullable_to_non_nullable
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
      String? comment,
      String? commenter_name,
      String? commenter_username,
      int? replies_count,
      String? commenter_image,
      DateTime? created_at,
      String? ommenter_image});
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
    Object? comment = freezed,
    Object? commenter_name = freezed,
    Object? commenter_username = freezed,
    Object? replies_count = freezed,
    Object? commenter_image = freezed,
    Object? created_at = freezed,
    Object? ommenter_image = freezed,
  }) {
    return _then(_Datum(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      commenter_name: commenter_name == freezed
          ? _value.commenter_name
          : commenter_name // ignore: cast_nullable_to_non_nullable
              as String?,
      commenter_username: commenter_username == freezed
          ? _value.commenter_username
          : commenter_username // ignore: cast_nullable_to_non_nullable
              as String?,
      replies_count: replies_count == freezed
          ? _value.replies_count
          : replies_count // ignore: cast_nullable_to_non_nullable
              as int?,
      commenter_image: commenter_image == freezed
          ? _value.commenter_image
          : commenter_image // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      ommenter_image: ommenter_image == freezed
          ? _value.ommenter_image
          : ommenter_image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Datum implements _Datum {
  const _$_Datum(
      {required this.id,
      required this.comment,
      required this.commenter_name,
      required this.commenter_username,
      required this.replies_count,
      required this.commenter_image,
      required this.created_at,
      required this.ommenter_image});

  factory _$_Datum.fromJson(Map<String, dynamic> json) =>
      _$_$_DatumFromJson(json);

  @override
  final int? id;
  @override
  final String? comment;
  @override
  final String? commenter_name;
  @override
  final String? commenter_username;
  @override
  final int? replies_count;
  @override
  final String? commenter_image;
  @override
  final DateTime? created_at;
  @override
  final String? ommenter_image;

  @override
  String toString() {
    return 'Datum(id: $id, comment: $comment, commenter_name: $commenter_name, commenter_username: $commenter_username, replies_count: $replies_count, commenter_image: $commenter_image, created_at: $created_at, ommenter_image: $ommenter_image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Datum &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.comment, comment) ||
                const DeepCollectionEquality()
                    .equals(other.comment, comment)) &&
            (identical(other.commenter_name, commenter_name) ||
                const DeepCollectionEquality()
                    .equals(other.commenter_name, commenter_name)) &&
            (identical(other.commenter_username, commenter_username) ||
                const DeepCollectionEquality()
                    .equals(other.commenter_username, commenter_username)) &&
            (identical(other.replies_count, replies_count) ||
                const DeepCollectionEquality()
                    .equals(other.replies_count, replies_count)) &&
            (identical(other.commenter_image, commenter_image) ||
                const DeepCollectionEquality()
                    .equals(other.commenter_image, commenter_image)) &&
            (identical(other.created_at, created_at) ||
                const DeepCollectionEquality()
                    .equals(other.created_at, created_at)) &&
            (identical(other.ommenter_image, ommenter_image) ||
                const DeepCollectionEquality()
                    .equals(other.ommenter_image, ommenter_image)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(comment) ^
      const DeepCollectionEquality().hash(commenter_name) ^
      const DeepCollectionEquality().hash(commenter_username) ^
      const DeepCollectionEquality().hash(replies_count) ^
      const DeepCollectionEquality().hash(commenter_image) ^
      const DeepCollectionEquality().hash(created_at) ^
      const DeepCollectionEquality().hash(ommenter_image);

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
      required String? comment,
      required String? commenter_name,
      required String? commenter_username,
      required int? replies_count,
      required String? commenter_image,
      required DateTime? created_at,
      required String? ommenter_image}) = _$_Datum;

  factory _Datum.fromJson(Map<String, dynamic> json) = _$_Datum.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get comment => throw _privateConstructorUsedError;
  @override
  String? get commenter_name => throw _privateConstructorUsedError;
  @override
  String? get commenter_username => throw _privateConstructorUsedError;
  @override
  int? get replies_count => throw _privateConstructorUsedError;
  @override
  String? get commenter_image => throw _privateConstructorUsedError;
  @override
  DateTime? get created_at => throw _privateConstructorUsedError;
  @override
  String? get ommenter_image => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DatumCopyWith<_Datum> get copyWith => throw _privateConstructorUsedError;
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
      required List<Link>? links,
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
  List<Link>? get links => throw _privateConstructorUsedError;
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
      List<Link>? links,
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
              as List<Link>?,
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
      List<Link>? links,
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
              as List<Link>?,
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
  final List<Link>? links;
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
      required List<Link>? links,
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
  List<Link>? get links => throw _privateConstructorUsedError;
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

Link _$LinkFromJson(Map<String, dynamic> json) {
  return _Link.fromJson(json);
}

/// @nodoc
class _$LinkTearOff {
  const _$LinkTearOff();

  _Link call(
      {required String? url, required String? label, required bool? active}) {
    return _Link(
      url: url,
      label: label,
      active: active,
    );
  }

  Link fromJson(Map<String, Object> json) {
    return Link.fromJson(json);
  }
}

/// @nodoc
const $Link = _$LinkTearOff();

/// @nodoc
mixin _$Link {
  String? get url => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;
  bool? get active => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LinkCopyWith<Link> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinkCopyWith<$Res> {
  factory $LinkCopyWith(Link value, $Res Function(Link) then) =
      _$LinkCopyWithImpl<$Res>;
  $Res call({String? url, String? label, bool? active});
}

/// @nodoc
class _$LinkCopyWithImpl<$Res> implements $LinkCopyWith<$Res> {
  _$LinkCopyWithImpl(this._value, this._then);

  final Link _value;
  // ignore: unused_field
  final $Res Function(Link) _then;

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
abstract class _$LinkCopyWith<$Res> implements $LinkCopyWith<$Res> {
  factory _$LinkCopyWith(_Link value, $Res Function(_Link) then) =
      __$LinkCopyWithImpl<$Res>;
  @override
  $Res call({String? url, String? label, bool? active});
}

/// @nodoc
class __$LinkCopyWithImpl<$Res> extends _$LinkCopyWithImpl<$Res>
    implements _$LinkCopyWith<$Res> {
  __$LinkCopyWithImpl(_Link _value, $Res Function(_Link) _then)
      : super(_value, (v) => _then(v as _Link));

  @override
  _Link get _value => super._value as _Link;

  @override
  $Res call({
    Object? url = freezed,
    Object? label = freezed,
    Object? active = freezed,
  }) {
    return _then(_Link(
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
class _$_Link implements _Link {
  const _$_Link({required this.url, required this.label, required this.active});

  factory _$_Link.fromJson(Map<String, dynamic> json) =>
      _$_$_LinkFromJson(json);

  @override
  final String? url;
  @override
  final String? label;
  @override
  final bool? active;

  @override
  String toString() {
    return 'Link(url: $url, label: $label, active: $active)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Link &&
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
  _$LinkCopyWith<_Link> get copyWith =>
      __$LinkCopyWithImpl<_Link>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LinkToJson(this);
  }
}

abstract class _Link implements Link {
  const factory _Link(
      {required String? url,
      required String? label,
      required bool? active}) = _$_Link;

  factory _Link.fromJson(Map<String, dynamic> json) = _$_Link.fromJson;

  @override
  String? get url => throw _privateConstructorUsedError;
  @override
  String? get label => throw _privateConstructorUsedError;
  @override
  bool? get active => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LinkCopyWith<_Link> get copyWith => throw _privateConstructorUsedError;
}
