// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'NewCommentResponse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewCommentResponse _$NewCommentResponseFromJson(Map<String, dynamic> json) {
  return _NewCommentResponse.fromJson(json);
}

/// @nodoc
class _$NewCommentResponseTearOff {
  const _$NewCommentResponseTearOff();

  _NewCommentResponse call({required Data? data}) {
    return _NewCommentResponse(
      data: data,
    );
  }

  NewCommentResponse fromJson(Map<String, Object> json) {
    return NewCommentResponse.fromJson(json);
  }
}

/// @nodoc
const $NewCommentResponse = _$NewCommentResponseTearOff();

/// @nodoc
mixin _$NewCommentResponse {
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewCommentResponseCopyWith<NewCommentResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewCommentResponseCopyWith<$Res> {
  factory $NewCommentResponseCopyWith(
          NewCommentResponse value, $Res Function(NewCommentResponse) then) =
      _$NewCommentResponseCopyWithImpl<$Res>;
  $Res call({Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$NewCommentResponseCopyWithImpl<$Res>
    implements $NewCommentResponseCopyWith<$Res> {
  _$NewCommentResponseCopyWithImpl(this._value, this._then);

  final NewCommentResponse _value;
  // ignore: unused_field
  final $Res Function(NewCommentResponse) _then;

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
abstract class _$NewCommentResponseCopyWith<$Res>
    implements $NewCommentResponseCopyWith<$Res> {
  factory _$NewCommentResponseCopyWith(
          _NewCommentResponse value, $Res Function(_NewCommentResponse) then) =
      __$NewCommentResponseCopyWithImpl<$Res>;
  @override
  $Res call({Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$NewCommentResponseCopyWithImpl<$Res>
    extends _$NewCommentResponseCopyWithImpl<$Res>
    implements _$NewCommentResponseCopyWith<$Res> {
  __$NewCommentResponseCopyWithImpl(
      _NewCommentResponse _value, $Res Function(_NewCommentResponse) _then)
      : super(_value, (v) => _then(v as _NewCommentResponse));

  @override
  _NewCommentResponse get _value => super._value as _NewCommentResponse;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_NewCommentResponse(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NewCommentResponse implements _NewCommentResponse {
  const _$_NewCommentResponse({required this.data});

  factory _$_NewCommentResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_NewCommentResponseFromJson(json);

  @override
  final Data? data;

  @override
  String toString() {
    return 'NewCommentResponse(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NewCommentResponse &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$NewCommentResponseCopyWith<_NewCommentResponse> get copyWith =>
      __$NewCommentResponseCopyWithImpl<_NewCommentResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NewCommentResponseToJson(this);
  }
}

abstract class _NewCommentResponse implements NewCommentResponse {
  const factory _NewCommentResponse({required Data? data}) =
      _$_NewCommentResponse;

  factory _NewCommentResponse.fromJson(Map<String, dynamic> json) =
      _$_NewCommentResponse.fromJson;

  @override
  Data? get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NewCommentResponseCopyWith<_NewCommentResponse> get copyWith =>
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
      required int? replies_count,
      required String? commenter_image}) {
    return _Data(
      id: id,
      comment: comment,
      commenter_name: commenter_name,
      replies_count: replies_count,
      commenter_image: commenter_image,
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
  int? get replies_count => throw _privateConstructorUsedError;
  String? get commenter_image => throw _privateConstructorUsedError;

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
      int? replies_count,
      String? commenter_image});
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
    Object? replies_count = freezed,
    Object? commenter_image = freezed,
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
      replies_count: replies_count == freezed
          ? _value.replies_count
          : replies_count // ignore: cast_nullable_to_non_nullable
              as int?,
      commenter_image: commenter_image == freezed
          ? _value.commenter_image
          : commenter_image // ignore: cast_nullable_to_non_nullable
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
      int? replies_count,
      String? commenter_image});
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
    Object? replies_count = freezed,
    Object? commenter_image = freezed,
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
      replies_count: replies_count == freezed
          ? _value.replies_count
          : replies_count // ignore: cast_nullable_to_non_nullable
              as int?,
      commenter_image: commenter_image == freezed
          ? _value.commenter_image
          : commenter_image // ignore: cast_nullable_to_non_nullable
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
      required this.replies_count,
      required this.commenter_image});

  factory _$_Data.fromJson(Map<String, dynamic> json) =>
      _$_$_DataFromJson(json);

  @override
  final int? id;
  @override
  final String? comment;
  @override
  final String? commenter_name;
  @override
  final int? replies_count;
  @override
  final String? commenter_image;

  @override
  String toString() {
    return 'Data(id: $id, comment: $comment, commenter_name: $commenter_name, replies_count: $replies_count, commenter_image: $commenter_image)';
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
            (identical(other.replies_count, replies_count) ||
                const DeepCollectionEquality()
                    .equals(other.replies_count, replies_count)) &&
            (identical(other.commenter_image, commenter_image) ||
                const DeepCollectionEquality()
                    .equals(other.commenter_image, commenter_image)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(comment) ^
      const DeepCollectionEquality().hash(commenter_name) ^
      const DeepCollectionEquality().hash(replies_count) ^
      const DeepCollectionEquality().hash(commenter_image);

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
      required int? replies_count,
      required String? commenter_image}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get comment => throw _privateConstructorUsedError;
  @override
  String? get commenter_name => throw _privateConstructorUsedError;
  @override
  int? get replies_count => throw _privateConstructorUsedError;
  @override
  String? get commenter_image => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DataCopyWith<_Data> get copyWith => throw _privateConstructorUsedError;
}
