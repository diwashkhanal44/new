// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'ReplyCommentResponse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReplyCommentResponse _$ReplyCommentResponseFromJson(Map<String, dynamic> json) {
  return _ReplyCommentResponse.fromJson(json);
}

/// @nodoc
class _$ReplyCommentResponseTearOff {
  const _$ReplyCommentResponseTearOff();

  _ReplyCommentResponse call({required Data? data}) {
    return _ReplyCommentResponse(
      data: data,
    );
  }

  ReplyCommentResponse fromJson(Map<String, Object> json) {
    return ReplyCommentResponse.fromJson(json);
  }
}

/// @nodoc
const $ReplyCommentResponse = _$ReplyCommentResponseTearOff();

/// @nodoc
mixin _$ReplyCommentResponse {
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReplyCommentResponseCopyWith<ReplyCommentResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReplyCommentResponseCopyWith<$Res> {
  factory $ReplyCommentResponseCopyWith(ReplyCommentResponse value,
          $Res Function(ReplyCommentResponse) then) =
      _$ReplyCommentResponseCopyWithImpl<$Res>;
  $Res call({Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ReplyCommentResponseCopyWithImpl<$Res>
    implements $ReplyCommentResponseCopyWith<$Res> {
  _$ReplyCommentResponseCopyWithImpl(this._value, this._then);

  final ReplyCommentResponse _value;
  // ignore: unused_field
  final $Res Function(ReplyCommentResponse) _then;

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
abstract class _$ReplyCommentResponseCopyWith<$Res>
    implements $ReplyCommentResponseCopyWith<$Res> {
  factory _$ReplyCommentResponseCopyWith(_ReplyCommentResponse value,
          $Res Function(_ReplyCommentResponse) then) =
      __$ReplyCommentResponseCopyWithImpl<$Res>;
  @override
  $Res call({Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$ReplyCommentResponseCopyWithImpl<$Res>
    extends _$ReplyCommentResponseCopyWithImpl<$Res>
    implements _$ReplyCommentResponseCopyWith<$Res> {
  __$ReplyCommentResponseCopyWithImpl(
      _ReplyCommentResponse _value, $Res Function(_ReplyCommentResponse) _then)
      : super(_value, (v) => _then(v as _ReplyCommentResponse));

  @override
  _ReplyCommentResponse get _value => super._value as _ReplyCommentResponse;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_ReplyCommentResponse(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReplyCommentResponse implements _ReplyCommentResponse {
  const _$_ReplyCommentResponse({required this.data});

  factory _$_ReplyCommentResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_ReplyCommentResponseFromJson(json);

  @override
  final Data? data;

  @override
  String toString() {
    return 'ReplyCommentResponse(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReplyCommentResponse &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$ReplyCommentResponseCopyWith<_ReplyCommentResponse> get copyWith =>
      __$ReplyCommentResponseCopyWithImpl<_ReplyCommentResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ReplyCommentResponseToJson(this);
  }
}

abstract class _ReplyCommentResponse implements ReplyCommentResponse {
  const factory _ReplyCommentResponse({required Data? data}) =
      _$_ReplyCommentResponse;

  factory _ReplyCommentResponse.fromJson(Map<String, dynamic> json) =
      _$_ReplyCommentResponse.fromJson;

  @override
  Data? get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ReplyCommentResponseCopyWith<_ReplyCommentResponse> get copyWith =>
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
      required String? comment,
      required String? commenter_name,
      required int? replier_id,
      required String? commenter_image,
      required int? parent_id,
      required String? replyUser}) {
    return _Data(
      id: id,
      comment: comment,
      commenter_name: commenter_name,
      replier_id: replier_id,
      commenter_image: commenter_image,
      parent_id: parent_id,
      replyUser: replyUser,
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
  String? get comment => throw _privateConstructorUsedError;
  String? get commenter_name => throw _privateConstructorUsedError;
  int? get replier_id => throw _privateConstructorUsedError;
  String? get commenter_image => throw _privateConstructorUsedError;
  int? get parent_id => throw _privateConstructorUsedError;
  String? get replyUser => throw _privateConstructorUsedError;

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
      String? comment,
      String? commenter_name,
      int? replier_id,
      String? commenter_image,
      int? parent_id,
      String? replyUser});
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
    Object? comment = freezed,
    Object? commenter_name = freezed,
    Object? replier_id = freezed,
    Object? commenter_image = freezed,
    Object? parent_id = freezed,
    Object? replyUser = freezed,
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
      replier_id: replier_id == freezed
          ? _value.replier_id
          : replier_id // ignore: cast_nullable_to_non_nullable
              as int?,
      commenter_image: commenter_image == freezed
          ? _value.commenter_image
          : commenter_image // ignore: cast_nullable_to_non_nullable
              as String?,
      parent_id: parent_id == freezed
          ? _value.parent_id
          : parent_id // ignore: cast_nullable_to_non_nullable
              as int?,
      replyUser: replyUser == freezed
          ? _value.replyUser
          : replyUser // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) then) =
      __$DataCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? comment,
      String? commenter_name,
      int? replier_id,
      String? commenter_image,
      int? parent_id,
      String? replyUser});
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
    Object? comment = freezed,
    Object? commenter_name = freezed,
    Object? replier_id = freezed,
    Object? commenter_image = freezed,
    Object? parent_id = freezed,
    Object? replyUser = freezed,
  }) {
    return _then(_Data(
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
      replier_id: replier_id == freezed
          ? _value.replier_id
          : replier_id // ignore: cast_nullable_to_non_nullable
              as int?,
      commenter_image: commenter_image == freezed
          ? _value.commenter_image
          : commenter_image // ignore: cast_nullable_to_non_nullable
              as String?,
      parent_id: parent_id == freezed
          ? _value.parent_id
          : parent_id // ignore: cast_nullable_to_non_nullable
              as int?,
      replyUser: replyUser == freezed
          ? _value.replyUser
          : replyUser // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Data implements _Data {
  const _$_Data(
      {required this.id,
      required this.comment,
      required this.commenter_name,
      required this.replier_id,
      required this.commenter_image,
      required this.parent_id,
      required this.replyUser});

  factory _$_Data.fromJson(Map<String, dynamic> json) =>
      _$_$_DataFromJson(json);

  @override
  final int? id;
  @override
  final String? comment;
  @override
  final String? commenter_name;
  @override
  final int? replier_id;
  @override
  final String? commenter_image;
  @override
  final int? parent_id;
  @override
  final String? replyUser;

  @override
  String toString() {
    return 'Data(id: $id, comment: $comment, commenter_name: $commenter_name, replier_id: $replier_id, commenter_image: $commenter_image, parent_id: $parent_id, replyUser: $replyUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Data &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.comment, comment) ||
                const DeepCollectionEquality()
                    .equals(other.comment, comment)) &&
            (identical(other.commenter_name, commenter_name) ||
                const DeepCollectionEquality()
                    .equals(other.commenter_name, commenter_name)) &&
            (identical(other.replier_id, replier_id) ||
                const DeepCollectionEquality()
                    .equals(other.replier_id, replier_id)) &&
            (identical(other.commenter_image, commenter_image) ||
                const DeepCollectionEquality()
                    .equals(other.commenter_image, commenter_image)) &&
            (identical(other.parent_id, parent_id) ||
                const DeepCollectionEquality()
                    .equals(other.parent_id, parent_id)) &&
            (identical(other.replyUser, replyUser) ||
                const DeepCollectionEquality()
                    .equals(other.replyUser, replyUser)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(comment) ^
      const DeepCollectionEquality().hash(commenter_name) ^
      const DeepCollectionEquality().hash(replier_id) ^
      const DeepCollectionEquality().hash(commenter_image) ^
      const DeepCollectionEquality().hash(parent_id) ^
      const DeepCollectionEquality().hash(replyUser);

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
      required String? comment,
      required String? commenter_name,
      required int? replier_id,
      required String? commenter_image,
      required int? parent_id,
      required String? replyUser}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get comment => throw _privateConstructorUsedError;
  @override
  String? get commenter_name => throw _privateConstructorUsedError;
  @override
  int? get replier_id => throw _privateConstructorUsedError;
  @override
  String? get commenter_image => throw _privateConstructorUsedError;
  @override
  int? get parent_id => throw _privateConstructorUsedError;
  @override
  String? get replyUser => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DataCopyWith<_Data> get copyWith => throw _privateConstructorUsedError;
}
