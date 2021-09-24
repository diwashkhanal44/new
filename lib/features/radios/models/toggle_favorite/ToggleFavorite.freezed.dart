// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'ToggleFavorite.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ToggleFavorite _$ToggleFavoriteFromJson(Map<String, dynamic> json) {
  return _ToggleFavorite.fromJson(json);
}

/// @nodoc
class _$ToggleFavoriteTearOff {
  const _$ToggleFavoriteTearOff();

  _ToggleFavorite call({required Data? data, required String? message}) {
    return _ToggleFavorite(
      data: data,
      message: message,
    );
  }

  ToggleFavorite fromJson(Map<String, Object> json) {
    return ToggleFavorite.fromJson(json);
  }
}

/// @nodoc
const $ToggleFavorite = _$ToggleFavoriteTearOff();

/// @nodoc
mixin _$ToggleFavorite {
  Data? get data => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ToggleFavoriteCopyWith<ToggleFavorite> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToggleFavoriteCopyWith<$Res> {
  factory $ToggleFavoriteCopyWith(
          ToggleFavorite value, $Res Function(ToggleFavorite) then) =
      _$ToggleFavoriteCopyWithImpl<$Res>;
  $Res call({Data? data, String? message});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ToggleFavoriteCopyWithImpl<$Res>
    implements $ToggleFavoriteCopyWith<$Res> {
  _$ToggleFavoriteCopyWithImpl(this._value, this._then);

  final ToggleFavorite _value;
  // ignore: unused_field
  final $Res Function(ToggleFavorite) _then;

  @override
  $Res call({
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$ToggleFavoriteCopyWith<$Res>
    implements $ToggleFavoriteCopyWith<$Res> {
  factory _$ToggleFavoriteCopyWith(
          _ToggleFavorite value, $Res Function(_ToggleFavorite) then) =
      __$ToggleFavoriteCopyWithImpl<$Res>;
  @override
  $Res call({Data? data, String? message});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$ToggleFavoriteCopyWithImpl<$Res>
    extends _$ToggleFavoriteCopyWithImpl<$Res>
    implements _$ToggleFavoriteCopyWith<$Res> {
  __$ToggleFavoriteCopyWithImpl(
      _ToggleFavorite _value, $Res Function(_ToggleFavorite) _then)
      : super(_value, (v) => _then(v as _ToggleFavorite));

  @override
  _ToggleFavorite get _value => super._value as _ToggleFavorite;

  @override
  $Res call({
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_ToggleFavorite(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ToggleFavorite implements _ToggleFavorite {
  const _$_ToggleFavorite({required this.data, required this.message});

  factory _$_ToggleFavorite.fromJson(Map<String, dynamic> json) =>
      _$_$_ToggleFavoriteFromJson(json);

  @override
  final Data? data;
  @override
  final String? message;

  @override
  String toString() {
    return 'ToggleFavorite(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ToggleFavorite &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$ToggleFavoriteCopyWith<_ToggleFavorite> get copyWith =>
      __$ToggleFavoriteCopyWithImpl<_ToggleFavorite>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ToggleFavoriteToJson(this);
  }
}

abstract class _ToggleFavorite implements ToggleFavorite {
  const factory _ToggleFavorite(
      {required Data? data, required String? message}) = _$_ToggleFavorite;

  factory _ToggleFavorite.fromJson(Map<String, dynamic> json) =
      _$_ToggleFavorite.fromJson;

  @override
  Data? get data => throw _privateConstructorUsedError;
  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ToggleFavoriteCopyWith<_ToggleFavorite> get copyWith =>
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
      required String? name,
      required String? slug,
      required String? old_logo,
      required String? link,
      required String? live_link,
      required String? content,
      required String? frequency,
      required int? status,
      required Publisher? publisher,
      required DateTime? created_at}) {
    return _Data(
      id: id,
      name: name,
      slug: slug,
      old_logo: old_logo,
      link: link,
      live_link: live_link,
      content: content,
      frequency: frequency,
      status: status,
      publisher: publisher,
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
  String? get name => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  String? get old_logo => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;
  String? get live_link => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  String? get frequency => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  Publisher? get publisher => throw _privateConstructorUsedError;
  DateTime? get created_at => throw _privateConstructorUsedError;

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
      String? name,
      String? slug,
      String? old_logo,
      String? link,
      String? live_link,
      String? content,
      String? frequency,
      int? status,
      Publisher? publisher,
      DateTime? created_at});

  $PublisherCopyWith<$Res>? get publisher;
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
    Object? name = freezed,
    Object? slug = freezed,
    Object? old_logo = freezed,
    Object? link = freezed,
    Object? live_link = freezed,
    Object? content = freezed,
    Object? frequency = freezed,
    Object? status = freezed,
    Object? publisher = freezed,
    Object? created_at = freezed,
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
      slug: slug == freezed
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      old_logo: old_logo == freezed
          ? _value.old_logo
          : old_logo // ignore: cast_nullable_to_non_nullable
              as String?,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      live_link: live_link == freezed
          ? _value.live_link
          : live_link // ignore: cast_nullable_to_non_nullable
              as String?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      frequency: frequency == freezed
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      publisher: publisher == freezed
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as Publisher?,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
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
}

/// @nodoc
abstract class _$DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) then) =
      __$DataCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? name,
      String? slug,
      String? old_logo,
      String? link,
      String? live_link,
      String? content,
      String? frequency,
      int? status,
      Publisher? publisher,
      DateTime? created_at});

  @override
  $PublisherCopyWith<$Res>? get publisher;
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
    Object? name = freezed,
    Object? slug = freezed,
    Object? old_logo = freezed,
    Object? link = freezed,
    Object? live_link = freezed,
    Object? content = freezed,
    Object? frequency = freezed,
    Object? status = freezed,
    Object? publisher = freezed,
    Object? created_at = freezed,
  }) {
    return _then(_Data(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: slug == freezed
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      old_logo: old_logo == freezed
          ? _value.old_logo
          : old_logo // ignore: cast_nullable_to_non_nullable
              as String?,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      live_link: live_link == freezed
          ? _value.live_link
          : live_link // ignore: cast_nullable_to_non_nullable
              as String?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      frequency: frequency == freezed
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      publisher: publisher == freezed
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as Publisher?,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Data implements _Data {
  const _$_Data(
      {required this.id,
      required this.name,
      required this.slug,
      required this.old_logo,
      required this.link,
      required this.live_link,
      required this.content,
      required this.frequency,
      required this.status,
      required this.publisher,
      required this.created_at});

  factory _$_Data.fromJson(Map<String, dynamic> json) =>
      _$_$_DataFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? slug;
  @override
  final String? old_logo;
  @override
  final String? link;
  @override
  final String? live_link;
  @override
  final String? content;
  @override
  final String? frequency;
  @override
  final int? status;
  @override
  final Publisher? publisher;
  @override
  final DateTime? created_at;

  @override
  String toString() {
    return 'Data(id: $id, name: $name, slug: $slug, old_logo: $old_logo, link: $link, live_link: $live_link, content: $content, frequency: $frequency, status: $status, publisher: $publisher, created_at: $created_at)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Data &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.slug, slug) ||
                const DeepCollectionEquality().equals(other.slug, slug)) &&
            (identical(other.old_logo, old_logo) ||
                const DeepCollectionEquality()
                    .equals(other.old_logo, old_logo)) &&
            (identical(other.link, link) ||
                const DeepCollectionEquality().equals(other.link, link)) &&
            (identical(other.live_link, live_link) ||
                const DeepCollectionEquality()
                    .equals(other.live_link, live_link)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality()
                    .equals(other.content, content)) &&
            (identical(other.frequency, frequency) ||
                const DeepCollectionEquality()
                    .equals(other.frequency, frequency)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.publisher, publisher) ||
                const DeepCollectionEquality()
                    .equals(other.publisher, publisher)) &&
            (identical(other.created_at, created_at) ||
                const DeepCollectionEquality()
                    .equals(other.created_at, created_at)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(slug) ^
      const DeepCollectionEquality().hash(old_logo) ^
      const DeepCollectionEquality().hash(link) ^
      const DeepCollectionEquality().hash(live_link) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(frequency) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(publisher) ^
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
      required String? name,
      required String? slug,
      required String? old_logo,
      required String? link,
      required String? live_link,
      required String? content,
      required String? frequency,
      required int? status,
      required Publisher? publisher,
      required DateTime? created_at}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get slug => throw _privateConstructorUsedError;
  @override
  String? get old_logo => throw _privateConstructorUsedError;
  @override
  String? get link => throw _privateConstructorUsedError;
  @override
  String? get live_link => throw _privateConstructorUsedError;
  @override
  String? get content => throw _privateConstructorUsedError;
  @override
  String? get frequency => throw _privateConstructorUsedError;
  @override
  int? get status => throw _privateConstructorUsedError;
  @override
  Publisher? get publisher => throw _privateConstructorUsedError;
  @override
  DateTime? get created_at => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DataCopyWith<_Data> get copyWith => throw _privateConstructorUsedError;
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
      required String? name_np,
      required String? old_photo,
      required String? mobile,
      required String? address,
      required String? email,
      required int? status,
      required int? featured,
      required int? organization_id,
      required String? name_combined,
      required int? gender,
      required String? role,
      required String? username,
      required String? created_at}) {
    return _Publisher(
      id: id,
      name: name,
      name_np: name_np,
      old_photo: old_photo,
      mobile: mobile,
      address: address,
      email: email,
      status: status,
      featured: featured,
      organization_id: organization_id,
      name_combined: name_combined,
      gender: gender,
      role: role,
      username: username,
      created_at: created_at,
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
  String? get name_np => throw _privateConstructorUsedError;
  String? get old_photo => throw _privateConstructorUsedError;
  String? get mobile => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  int? get featured => throw _privateConstructorUsedError;
  int? get organization_id => throw _privateConstructorUsedError;
  String? get name_combined => throw _privateConstructorUsedError;
  int? get gender => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;

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
      String? name_np,
      String? old_photo,
      String? mobile,
      String? address,
      String? email,
      int? status,
      int? featured,
      int? organization_id,
      String? name_combined,
      int? gender,
      String? role,
      String? username,
      String? created_at});
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
    Object? name_np = freezed,
    Object? old_photo = freezed,
    Object? mobile = freezed,
    Object? address = freezed,
    Object? email = freezed,
    Object? status = freezed,
    Object? featured = freezed,
    Object? organization_id = freezed,
    Object? name_combined = freezed,
    Object? gender = freezed,
    Object? role = freezed,
    Object? username = freezed,
    Object? created_at = freezed,
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
      old_photo: old_photo == freezed
          ? _value.old_photo
          : old_photo // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile: mobile == freezed
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      featured: featured == freezed
          ? _value.featured
          : featured // ignore: cast_nullable_to_non_nullable
              as int?,
      organization_id: organization_id == freezed
          ? _value.organization_id
          : organization_id // ignore: cast_nullable_to_non_nullable
              as int?,
      name_combined: name_combined == freezed
          ? _value.name_combined
          : name_combined // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int?,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
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
      String? name_np,
      String? old_photo,
      String? mobile,
      String? address,
      String? email,
      int? status,
      int? featured,
      int? organization_id,
      String? name_combined,
      int? gender,
      String? role,
      String? username,
      String? created_at});
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
    Object? name_np = freezed,
    Object? old_photo = freezed,
    Object? mobile = freezed,
    Object? address = freezed,
    Object? email = freezed,
    Object? status = freezed,
    Object? featured = freezed,
    Object? organization_id = freezed,
    Object? name_combined = freezed,
    Object? gender = freezed,
    Object? role = freezed,
    Object? username = freezed,
    Object? created_at = freezed,
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
      name_np: name_np == freezed
          ? _value.name_np
          : name_np // ignore: cast_nullable_to_non_nullable
              as String?,
      old_photo: old_photo == freezed
          ? _value.old_photo
          : old_photo // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile: mobile == freezed
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      featured: featured == freezed
          ? _value.featured
          : featured // ignore: cast_nullable_to_non_nullable
              as int?,
      organization_id: organization_id == freezed
          ? _value.organization_id
          : organization_id // ignore: cast_nullable_to_non_nullable
              as int?,
      name_combined: name_combined == freezed
          ? _value.name_combined
          : name_combined // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int?,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
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
      required this.name_np,
      required this.old_photo,
      required this.mobile,
      required this.address,
      required this.email,
      required this.status,
      required this.featured,
      required this.organization_id,
      required this.name_combined,
      required this.gender,
      required this.role,
      required this.username,
      required this.created_at});

  factory _$_Publisher.fromJson(Map<String, dynamic> json) =>
      _$_$_PublisherFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? name_np;
  @override
  final String? old_photo;
  @override
  final String? mobile;
  @override
  final String? address;
  @override
  final String? email;
  @override
  final int? status;
  @override
  final int? featured;
  @override
  final int? organization_id;
  @override
  final String? name_combined;
  @override
  final int? gender;
  @override
  final String? role;
  @override
  final String? username;
  @override
  final String? created_at;

  @override
  String toString() {
    return 'Publisher(id: $id, name: $name, name_np: $name_np, old_photo: $old_photo, mobile: $mobile, address: $address, email: $email, status: $status, featured: $featured, organization_id: $organization_id, name_combined: $name_combined, gender: $gender, role: $role, username: $username, created_at: $created_at)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Publisher &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.name_np, name_np) ||
                const DeepCollectionEquality()
                    .equals(other.name_np, name_np)) &&
            (identical(other.old_photo, old_photo) ||
                const DeepCollectionEquality()
                    .equals(other.old_photo, old_photo)) &&
            (identical(other.mobile, mobile) ||
                const DeepCollectionEquality().equals(other.mobile, mobile)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.featured, featured) ||
                const DeepCollectionEquality()
                    .equals(other.featured, featured)) &&
            (identical(other.organization_id, organization_id) ||
                const DeepCollectionEquality()
                    .equals(other.organization_id, organization_id)) &&
            (identical(other.name_combined, name_combined) ||
                const DeepCollectionEquality()
                    .equals(other.name_combined, name_combined)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.created_at, created_at) ||
                const DeepCollectionEquality()
                    .equals(other.created_at, created_at)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(name_np) ^
      const DeepCollectionEquality().hash(old_photo) ^
      const DeepCollectionEquality().hash(mobile) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(featured) ^
      const DeepCollectionEquality().hash(organization_id) ^
      const DeepCollectionEquality().hash(name_combined) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(role) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(created_at);

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
      required String? name_np,
      required String? old_photo,
      required String? mobile,
      required String? address,
      required String? email,
      required int? status,
      required int? featured,
      required int? organization_id,
      required String? name_combined,
      required int? gender,
      required String? role,
      required String? username,
      required String? created_at}) = _$_Publisher;

  factory _Publisher.fromJson(Map<String, dynamic> json) =
      _$_Publisher.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get name_np => throw _privateConstructorUsedError;
  @override
  String? get old_photo => throw _privateConstructorUsedError;
  @override
  String? get mobile => throw _privateConstructorUsedError;
  @override
  String? get address => throw _privateConstructorUsedError;
  @override
  String? get email => throw _privateConstructorUsedError;
  @override
  int? get status => throw _privateConstructorUsedError;
  @override
  int? get featured => throw _privateConstructorUsedError;
  @override
  int? get organization_id => throw _privateConstructorUsedError;
  @override
  String? get name_combined => throw _privateConstructorUsedError;
  @override
  int? get gender => throw _privateConstructorUsedError;
  @override
  String? get role => throw _privateConstructorUsedError;
  @override
  String? get username => throw _privateConstructorUsedError;
  @override
  String? get created_at => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PublisherCopyWith<_Publisher> get copyWith =>
      throw _privateConstructorUsedError;
}
