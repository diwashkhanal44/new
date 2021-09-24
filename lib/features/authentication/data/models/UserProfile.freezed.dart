// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'UserProfile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserProfile _$UserProfileFromJson(Map<String, dynamic> json) {
  return _UserProfile.fromJson(json);
}

/// @nodoc
class _$UserProfileTearOff {
  const _$UserProfileTearOff();

  _UserProfile call({required Data? data}) {
    return _UserProfile(
      data: data,
    );
  }

  UserProfile fromJson(Map<String, Object> json) {
    return UserProfile.fromJson(json);
  }
}

/// @nodoc
const $UserProfile = _$UserProfileTearOff();

/// @nodoc
mixin _$UserProfile {
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserProfileCopyWith<UserProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileCopyWith<$Res> {
  factory $UserProfileCopyWith(
          UserProfile value, $Res Function(UserProfile) then) =
      _$UserProfileCopyWithImpl<$Res>;
  $Res call({Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$UserProfileCopyWithImpl<$Res> implements $UserProfileCopyWith<$Res> {
  _$UserProfileCopyWithImpl(this._value, this._then);

  final UserProfile _value;
  // ignore: unused_field
  final $Res Function(UserProfile) _then;

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
abstract class _$UserProfileCopyWith<$Res>
    implements $UserProfileCopyWith<$Res> {
  factory _$UserProfileCopyWith(
          _UserProfile value, $Res Function(_UserProfile) then) =
      __$UserProfileCopyWithImpl<$Res>;
  @override
  $Res call({Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$UserProfileCopyWithImpl<$Res> extends _$UserProfileCopyWithImpl<$Res>
    implements _$UserProfileCopyWith<$Res> {
  __$UserProfileCopyWithImpl(
      _UserProfile _value, $Res Function(_UserProfile) _then)
      : super(_value, (v) => _then(v as _UserProfile));

  @override
  _UserProfile get _value => super._value as _UserProfile;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_UserProfile(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserProfile implements _UserProfile {
  const _$_UserProfile({required this.data});

  factory _$_UserProfile.fromJson(Map<String, dynamic> json) =>
      _$_$_UserProfileFromJson(json);

  @override
  final Data? data;

  @override
  String toString() {
    return 'UserProfile(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserProfile &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$UserProfileCopyWith<_UserProfile> get copyWith =>
      __$UserProfileCopyWithImpl<_UserProfile>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserProfileToJson(this);
  }
}

abstract class _UserProfile implements UserProfile {
  const factory _UserProfile({required Data? data}) = _$_UserProfile;

  factory _UserProfile.fromJson(Map<String, dynamic> json) =
      _$_UserProfile.fromJson;

  @override
  Data? get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserProfileCopyWith<_UserProfile> get copyWith =>
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
      required String? name_np,
      required String? address,
      required String? name_final,
      required String? email,
      required String? name_combined,
      required String? mobile,
      required int? gender,
      required int? pwd_reset,
      required String? label,
      required List<Source>? sources,
      required String? profile_photo,
      required String? username,
      required int? roles,
      required RoleParsed? roleParsed,
      required List<Permission>? permissions,
      required String? created_at,
      required Personalization? personalization}) {
    return _Data(
      id: id,
      name: name,
      name_np: name_np,
      address: address,
      name_final: name_final,
      email: email,
      name_combined: name_combined,
      mobile: mobile,
      gender: gender,
      pwd_reset: pwd_reset,
      label: label,
      sources: sources,
      profile_photo: profile_photo,
      username: username,
      roles: roles,
      roleParsed: roleParsed,
      permissions: permissions,
      created_at: created_at,
      personalization: personalization,
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
  String? get name_np => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get name_final => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get name_combined => throw _privateConstructorUsedError;
  String? get mobile => throw _privateConstructorUsedError;
  int? get gender => throw _privateConstructorUsedError;
  int? get pwd_reset => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;
  List<Source>? get sources => throw _privateConstructorUsedError;
  String? get profile_photo => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  int? get roles => throw _privateConstructorUsedError;
  RoleParsed? get roleParsed => throw _privateConstructorUsedError;
  List<Permission>? get permissions => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;
  Personalization? get personalization => throw _privateConstructorUsedError;

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
      String? name_np,
      String? address,
      String? name_final,
      String? email,
      String? name_combined,
      String? mobile,
      int? gender,
      int? pwd_reset,
      String? label,
      List<Source>? sources,
      String? profile_photo,
      String? username,
      int? roles,
      RoleParsed? roleParsed,
      List<Permission>? permissions,
      String? created_at,
      Personalization? personalization});

  $RoleParsedCopyWith<$Res>? get roleParsed;
  $PersonalizationCopyWith<$Res>? get personalization;
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
    Object? name_np = freezed,
    Object? address = freezed,
    Object? name_final = freezed,
    Object? email = freezed,
    Object? name_combined = freezed,
    Object? mobile = freezed,
    Object? gender = freezed,
    Object? pwd_reset = freezed,
    Object? label = freezed,
    Object? sources = freezed,
    Object? profile_photo = freezed,
    Object? username = freezed,
    Object? roles = freezed,
    Object? roleParsed = freezed,
    Object? permissions = freezed,
    Object? created_at = freezed,
    Object? personalization = freezed,
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
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      name_final: name_final == freezed
          ? _value.name_final
          : name_final // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      name_combined: name_combined == freezed
          ? _value.name_combined
          : name_combined // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile: mobile == freezed
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int?,
      pwd_reset: pwd_reset == freezed
          ? _value.pwd_reset
          : pwd_reset // ignore: cast_nullable_to_non_nullable
              as int?,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      sources: sources == freezed
          ? _value.sources
          : sources // ignore: cast_nullable_to_non_nullable
              as List<Source>?,
      profile_photo: profile_photo == freezed
          ? _value.profile_photo
          : profile_photo // ignore: cast_nullable_to_non_nullable
              as String?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      roles: roles == freezed
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as int?,
      roleParsed: roleParsed == freezed
          ? _value.roleParsed
          : roleParsed // ignore: cast_nullable_to_non_nullable
              as RoleParsed?,
      permissions: permissions == freezed
          ? _value.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as List<Permission>?,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      personalization: personalization == freezed
          ? _value.personalization
          : personalization // ignore: cast_nullable_to_non_nullable
              as Personalization?,
    ));
  }

  @override
  $RoleParsedCopyWith<$Res>? get roleParsed {
    if (_value.roleParsed == null) {
      return null;
    }

    return $RoleParsedCopyWith<$Res>(_value.roleParsed!, (value) {
      return _then(_value.copyWith(roleParsed: value));
    });
  }

  @override
  $PersonalizationCopyWith<$Res>? get personalization {
    if (_value.personalization == null) {
      return null;
    }

    return $PersonalizationCopyWith<$Res>(_value.personalization!, (value) {
      return _then(_value.copyWith(personalization: value));
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
      String? name_np,
      String? address,
      String? name_final,
      String? email,
      String? name_combined,
      String? mobile,
      int? gender,
      int? pwd_reset,
      String? label,
      List<Source>? sources,
      String? profile_photo,
      String? username,
      int? roles,
      RoleParsed? roleParsed,
      List<Permission>? permissions,
      String? created_at,
      Personalization? personalization});

  @override
  $RoleParsedCopyWith<$Res>? get roleParsed;
  @override
  $PersonalizationCopyWith<$Res>? get personalization;
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
    Object? name_np = freezed,
    Object? address = freezed,
    Object? name_final = freezed,
    Object? email = freezed,
    Object? name_combined = freezed,
    Object? mobile = freezed,
    Object? gender = freezed,
    Object? pwd_reset = freezed,
    Object? label = freezed,
    Object? sources = freezed,
    Object? profile_photo = freezed,
    Object? username = freezed,
    Object? roles = freezed,
    Object? roleParsed = freezed,
    Object? permissions = freezed,
    Object? created_at = freezed,
    Object? personalization = freezed,
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
      name_np: name_np == freezed
          ? _value.name_np
          : name_np // ignore: cast_nullable_to_non_nullable
              as String?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      name_final: name_final == freezed
          ? _value.name_final
          : name_final // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      name_combined: name_combined == freezed
          ? _value.name_combined
          : name_combined // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile: mobile == freezed
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int?,
      pwd_reset: pwd_reset == freezed
          ? _value.pwd_reset
          : pwd_reset // ignore: cast_nullable_to_non_nullable
              as int?,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      sources: sources == freezed
          ? _value.sources
          : sources // ignore: cast_nullable_to_non_nullable
              as List<Source>?,
      profile_photo: profile_photo == freezed
          ? _value.profile_photo
          : profile_photo // ignore: cast_nullable_to_non_nullable
              as String?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      roles: roles == freezed
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as int?,
      roleParsed: roleParsed == freezed
          ? _value.roleParsed
          : roleParsed // ignore: cast_nullable_to_non_nullable
              as RoleParsed?,
      permissions: permissions == freezed
          ? _value.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as List<Permission>?,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      personalization: personalization == freezed
          ? _value.personalization
          : personalization // ignore: cast_nullable_to_non_nullable
              as Personalization?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Data implements _Data {
  const _$_Data(
      {required this.id,
      required this.name,
      required this.name_np,
      required this.address,
      required this.name_final,
      required this.email,
      required this.name_combined,
      required this.mobile,
      required this.gender,
      required this.pwd_reset,
      required this.label,
      required this.sources,
      required this.profile_photo,
      required this.username,
      required this.roles,
      required this.roleParsed,
      required this.permissions,
      required this.created_at,
      required this.personalization});

  factory _$_Data.fromJson(Map<String, dynamic> json) =>
      _$_$_DataFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? name_np;
  @override
  final String? address;
  @override
  final String? name_final;
  @override
  final String? email;
  @override
  final String? name_combined;
  @override
  final String? mobile;
  @override
  final int? gender;
  @override
  final int? pwd_reset;
  @override
  final String? label;
  @override
  final List<Source>? sources;
  @override
  final String? profile_photo;
  @override
  final String? username;
  @override
  final int? roles;
  @override
  final RoleParsed? roleParsed;
  @override
  final List<Permission>? permissions;
  @override
  final String? created_at;
  @override
  final Personalization? personalization;

  @override
  String toString() {
    return 'Data(id: $id, name: $name, name_np: $name_np, address: $address, name_final: $name_final, email: $email, name_combined: $name_combined, mobile: $mobile, gender: $gender, pwd_reset: $pwd_reset, label: $label, sources: $sources, profile_photo: $profile_photo, username: $username, roles: $roles, roleParsed: $roleParsed, permissions: $permissions, created_at: $created_at, personalization: $personalization)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Data &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.name_np, name_np) ||
                const DeepCollectionEquality()
                    .equals(other.name_np, name_np)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.name_final, name_final) ||
                const DeepCollectionEquality()
                    .equals(other.name_final, name_final)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.name_combined, name_combined) ||
                const DeepCollectionEquality()
                    .equals(other.name_combined, name_combined)) &&
            (identical(other.mobile, mobile) ||
                const DeepCollectionEquality().equals(other.mobile, mobile)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.pwd_reset, pwd_reset) ||
                const DeepCollectionEquality()
                    .equals(other.pwd_reset, pwd_reset)) &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)) &&
            (identical(other.sources, sources) ||
                const DeepCollectionEquality()
                    .equals(other.sources, sources)) &&
            (identical(other.profile_photo, profile_photo) ||
                const DeepCollectionEquality()
                    .equals(other.profile_photo, profile_photo)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.roles, roles) ||
                const DeepCollectionEquality().equals(other.roles, roles)) &&
            (identical(other.roleParsed, roleParsed) ||
                const DeepCollectionEquality()
                    .equals(other.roleParsed, roleParsed)) &&
            (identical(other.permissions, permissions) ||
                const DeepCollectionEquality()
                    .equals(other.permissions, permissions)) &&
            (identical(other.created_at, created_at) ||
                const DeepCollectionEquality()
                    .equals(other.created_at, created_at)) &&
            (identical(other.personalization, personalization) ||
                const DeepCollectionEquality()
                    .equals(other.personalization, personalization)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(name_np) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(name_final) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(name_combined) ^
      const DeepCollectionEquality().hash(mobile) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(pwd_reset) ^
      const DeepCollectionEquality().hash(label) ^
      const DeepCollectionEquality().hash(sources) ^
      const DeepCollectionEquality().hash(profile_photo) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(roles) ^
      const DeepCollectionEquality().hash(roleParsed) ^
      const DeepCollectionEquality().hash(permissions) ^
      const DeepCollectionEquality().hash(created_at) ^
      const DeepCollectionEquality().hash(personalization);

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
      required String? name_np,
      required String? address,
      required String? name_final,
      required String? email,
      required String? name_combined,
      required String? mobile,
      required int? gender,
      required int? pwd_reset,
      required String? label,
      required List<Source>? sources,
      required String? profile_photo,
      required String? username,
      required int? roles,
      required RoleParsed? roleParsed,
      required List<Permission>? permissions,
      required String? created_at,
      required Personalization? personalization}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get name_np => throw _privateConstructorUsedError;
  @override
  String? get address => throw _privateConstructorUsedError;
  @override
  String? get name_final => throw _privateConstructorUsedError;
  @override
  String? get email => throw _privateConstructorUsedError;
  @override
  String? get name_combined => throw _privateConstructorUsedError;
  @override
  String? get mobile => throw _privateConstructorUsedError;
  @override
  int? get gender => throw _privateConstructorUsedError;
  @override
  int? get pwd_reset => throw _privateConstructorUsedError;
  @override
  String? get label => throw _privateConstructorUsedError;
  @override
  List<Source>? get sources => throw _privateConstructorUsedError;
  @override
  String? get profile_photo => throw _privateConstructorUsedError;
  @override
  String? get username => throw _privateConstructorUsedError;
  @override
  int? get roles => throw _privateConstructorUsedError;
  @override
  RoleParsed? get roleParsed => throw _privateConstructorUsedError;
  @override
  List<Permission>? get permissions => throw _privateConstructorUsedError;
  @override
  String? get created_at => throw _privateConstructorUsedError;
  @override
  Personalization? get personalization => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DataCopyWith<_Data> get copyWith => throw _privateConstructorUsedError;
}

Permission _$PermissionFromJson(Map<String, dynamic> json) {
  return _Permission.fromJson(json);
}

/// @nodoc
class _$PermissionTearOff {
  const _$PermissionTearOff();

  _Permission call(
      {required int? id,
      required int? value,
      required String? name,
      required String? guard_name,
      required String? group,
      required String? display_name,
      required String? name_final,
      required String? name_combined,
      required String? label,
      required DateTime? created_at}) {
    return _Permission(
      id: id,
      value: value,
      name: name,
      guard_name: guard_name,
      group: group,
      display_name: display_name,
      name_final: name_final,
      name_combined: name_combined,
      label: label,
      created_at: created_at,
    );
  }

  Permission fromJson(Map<String, Object> json) {
    return Permission.fromJson(json);
  }
}

/// @nodoc
const $Permission = _$PermissionTearOff();

/// @nodoc
mixin _$Permission {
  int? get id => throw _privateConstructorUsedError;
  int? get value => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get guard_name => throw _privateConstructorUsedError;
  String? get group => throw _privateConstructorUsedError;
  String? get display_name => throw _privateConstructorUsedError;
  String? get name_final => throw _privateConstructorUsedError;
  String? get name_combined => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;
  DateTime? get created_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PermissionCopyWith<Permission> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PermissionCopyWith<$Res> {
  factory $PermissionCopyWith(
          Permission value, $Res Function(Permission) then) =
      _$PermissionCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      int? value,
      String? name,
      String? guard_name,
      String? group,
      String? display_name,
      String? name_final,
      String? name_combined,
      String? label,
      DateTime? created_at});
}

/// @nodoc
class _$PermissionCopyWithImpl<$Res> implements $PermissionCopyWith<$Res> {
  _$PermissionCopyWithImpl(this._value, this._then);

  final Permission _value;
  // ignore: unused_field
  final $Res Function(Permission) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? value = freezed,
    Object? name = freezed,
    Object? guard_name = freezed,
    Object? group = freezed,
    Object? display_name = freezed,
    Object? name_final = freezed,
    Object? name_combined = freezed,
    Object? label = freezed,
    Object? created_at = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      guard_name: guard_name == freezed
          ? _value.guard_name
          : guard_name // ignore: cast_nullable_to_non_nullable
              as String?,
      group: group == freezed
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String?,
      display_name: display_name == freezed
          ? _value.display_name
          : display_name // ignore: cast_nullable_to_non_nullable
              as String?,
      name_final: name_final == freezed
          ? _value.name_final
          : name_final // ignore: cast_nullable_to_non_nullable
              as String?,
      name_combined: name_combined == freezed
          ? _value.name_combined
          : name_combined // ignore: cast_nullable_to_non_nullable
              as String?,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$PermissionCopyWith<$Res> implements $PermissionCopyWith<$Res> {
  factory _$PermissionCopyWith(
          _Permission value, $Res Function(_Permission) then) =
      __$PermissionCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      int? value,
      String? name,
      String? guard_name,
      String? group,
      String? display_name,
      String? name_final,
      String? name_combined,
      String? label,
      DateTime? created_at});
}

/// @nodoc
class __$PermissionCopyWithImpl<$Res> extends _$PermissionCopyWithImpl<$Res>
    implements _$PermissionCopyWith<$Res> {
  __$PermissionCopyWithImpl(
      _Permission _value, $Res Function(_Permission) _then)
      : super(_value, (v) => _then(v as _Permission));

  @override
  _Permission get _value => super._value as _Permission;

  @override
  $Res call({
    Object? id = freezed,
    Object? value = freezed,
    Object? name = freezed,
    Object? guard_name = freezed,
    Object? group = freezed,
    Object? display_name = freezed,
    Object? name_final = freezed,
    Object? name_combined = freezed,
    Object? label = freezed,
    Object? created_at = freezed,
  }) {
    return _then(_Permission(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      guard_name: guard_name == freezed
          ? _value.guard_name
          : guard_name // ignore: cast_nullable_to_non_nullable
              as String?,
      group: group == freezed
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String?,
      display_name: display_name == freezed
          ? _value.display_name
          : display_name // ignore: cast_nullable_to_non_nullable
              as String?,
      name_final: name_final == freezed
          ? _value.name_final
          : name_final // ignore: cast_nullable_to_non_nullable
              as String?,
      name_combined: name_combined == freezed
          ? _value.name_combined
          : name_combined // ignore: cast_nullable_to_non_nullable
              as String?,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Permission implements _Permission {
  const _$_Permission(
      {required this.id,
      required this.value,
      required this.name,
      required this.guard_name,
      required this.group,
      required this.display_name,
      required this.name_final,
      required this.name_combined,
      required this.label,
      required this.created_at});

  factory _$_Permission.fromJson(Map<String, dynamic> json) =>
      _$_$_PermissionFromJson(json);

  @override
  final int? id;
  @override
  final int? value;
  @override
  final String? name;
  @override
  final String? guard_name;
  @override
  final String? group;
  @override
  final String? display_name;
  @override
  final String? name_final;
  @override
  final String? name_combined;
  @override
  final String? label;
  @override
  final DateTime? created_at;

  @override
  String toString() {
    return 'Permission(id: $id, value: $value, name: $name, guard_name: $guard_name, group: $group, display_name: $display_name, name_final: $name_final, name_combined: $name_combined, label: $label, created_at: $created_at)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Permission &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.guard_name, guard_name) ||
                const DeepCollectionEquality()
                    .equals(other.guard_name, guard_name)) &&
            (identical(other.group, group) ||
                const DeepCollectionEquality().equals(other.group, group)) &&
            (identical(other.display_name, display_name) ||
                const DeepCollectionEquality()
                    .equals(other.display_name, display_name)) &&
            (identical(other.name_final, name_final) ||
                const DeepCollectionEquality()
                    .equals(other.name_final, name_final)) &&
            (identical(other.name_combined, name_combined) ||
                const DeepCollectionEquality()
                    .equals(other.name_combined, name_combined)) &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)) &&
            (identical(other.created_at, created_at) ||
                const DeepCollectionEquality()
                    .equals(other.created_at, created_at)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(guard_name) ^
      const DeepCollectionEquality().hash(group) ^
      const DeepCollectionEquality().hash(display_name) ^
      const DeepCollectionEquality().hash(name_final) ^
      const DeepCollectionEquality().hash(name_combined) ^
      const DeepCollectionEquality().hash(label) ^
      const DeepCollectionEquality().hash(created_at);

  @JsonKey(ignore: true)
  @override
  _$PermissionCopyWith<_Permission> get copyWith =>
      __$PermissionCopyWithImpl<_Permission>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PermissionToJson(this);
  }
}

abstract class _Permission implements Permission {
  const factory _Permission(
      {required int? id,
      required int? value,
      required String? name,
      required String? guard_name,
      required String? group,
      required String? display_name,
      required String? name_final,
      required String? name_combined,
      required String? label,
      required DateTime? created_at}) = _$_Permission;

  factory _Permission.fromJson(Map<String, dynamic> json) =
      _$_Permission.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  int? get value => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get guard_name => throw _privateConstructorUsedError;
  @override
  String? get group => throw _privateConstructorUsedError;
  @override
  String? get display_name => throw _privateConstructorUsedError;
  @override
  String? get name_final => throw _privateConstructorUsedError;
  @override
  String? get name_combined => throw _privateConstructorUsedError;
  @override
  String? get label => throw _privateConstructorUsedError;
  @override
  DateTime? get created_at => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PermissionCopyWith<_Permission> get copyWith =>
      throw _privateConstructorUsedError;
}

Personalization _$PersonalizationFromJson(Map<String, dynamic> json) {
  return _Personalization.fromJson(json);
}

/// @nodoc
class _$PersonalizationTearOff {
  const _$PersonalizationTearOff();

  _Personalization call(
      {required dynamic language, required List<int>? categories}) {
    return _Personalization(
      language: language,
      categories: categories,
    );
  }

  Personalization fromJson(Map<String, Object> json) {
    return Personalization.fromJson(json);
  }
}

/// @nodoc
const $Personalization = _$PersonalizationTearOff();

/// @nodoc
mixin _$Personalization {
  dynamic get language => throw _privateConstructorUsedError;
  List<int>? get categories => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonalizationCopyWith<Personalization> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonalizationCopyWith<$Res> {
  factory $PersonalizationCopyWith(
          Personalization value, $Res Function(Personalization) then) =
      _$PersonalizationCopyWithImpl<$Res>;
  $Res call({dynamic language, List<int>? categories});
}

/// @nodoc
class _$PersonalizationCopyWithImpl<$Res>
    implements $PersonalizationCopyWith<$Res> {
  _$PersonalizationCopyWithImpl(this._value, this._then);

  final Personalization _value;
  // ignore: unused_field
  final $Res Function(Personalization) _then;

  @override
  $Res call({
    Object? language = freezed,
    Object? categories = freezed,
  }) {
    return _then(_value.copyWith(
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as dynamic,
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
abstract class _$PersonalizationCopyWith<$Res>
    implements $PersonalizationCopyWith<$Res> {
  factory _$PersonalizationCopyWith(
          _Personalization value, $Res Function(_Personalization) then) =
      __$PersonalizationCopyWithImpl<$Res>;
  @override
  $Res call({dynamic language, List<int>? categories});
}

/// @nodoc
class __$PersonalizationCopyWithImpl<$Res>
    extends _$PersonalizationCopyWithImpl<$Res>
    implements _$PersonalizationCopyWith<$Res> {
  __$PersonalizationCopyWithImpl(
      _Personalization _value, $Res Function(_Personalization) _then)
      : super(_value, (v) => _then(v as _Personalization));

  @override
  _Personalization get _value => super._value as _Personalization;

  @override
  $Res call({
    Object? language = freezed,
    Object? categories = freezed,
  }) {
    return _then(_Personalization(
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as dynamic,
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Personalization implements _Personalization {
  const _$_Personalization({required this.language, required this.categories});

  factory _$_Personalization.fromJson(Map<String, dynamic> json) =>
      _$_$_PersonalizationFromJson(json);

  @override
  final dynamic language;
  @override
  final List<int>? categories;

  @override
  String toString() {
    return 'Personalization(language: $language, categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Personalization &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)) &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality()
                    .equals(other.categories, categories)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(language) ^
      const DeepCollectionEquality().hash(categories);

  @JsonKey(ignore: true)
  @override
  _$PersonalizationCopyWith<_Personalization> get copyWith =>
      __$PersonalizationCopyWithImpl<_Personalization>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PersonalizationToJson(this);
  }
}

abstract class _Personalization implements Personalization {
  const factory _Personalization(
      {required dynamic language,
      required List<int>? categories}) = _$_Personalization;

  factory _Personalization.fromJson(Map<String, dynamic> json) =
      _$_Personalization.fromJson;

  @override
  dynamic get language => throw _privateConstructorUsedError;
  @override
  List<int>? get categories => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PersonalizationCopyWith<_Personalization> get copyWith =>
      throw _privateConstructorUsedError;
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

RoleParsed _$RoleParsedFromJson(Map<String, dynamic> json) {
  return _RoleParsed.fromJson(json);
}

/// @nodoc
class _$RoleParsedTearOff {
  const _$RoleParsedTearOff();

  _RoleParsed call(
      {required int? id,
      required String? display_name,
      required String? display_name_np,
      required String? name_final,
      required String? name_combined,
      required String? name,
      required String? guard_name,
      required int? is_for_office}) {
    return _RoleParsed(
      id: id,
      display_name: display_name,
      display_name_np: display_name_np,
      name_final: name_final,
      name_combined: name_combined,
      name: name,
      guard_name: guard_name,
      is_for_office: is_for_office,
    );
  }

  RoleParsed fromJson(Map<String, Object> json) {
    return RoleParsed.fromJson(json);
  }
}

/// @nodoc
const $RoleParsed = _$RoleParsedTearOff();

/// @nodoc
mixin _$RoleParsed {
  int? get id => throw _privateConstructorUsedError;
  String? get display_name => throw _privateConstructorUsedError;
  String? get display_name_np => throw _privateConstructorUsedError;
  String? get name_final => throw _privateConstructorUsedError;
  String? get name_combined => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get guard_name => throw _privateConstructorUsedError;
  int? get is_for_office => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoleParsedCopyWith<RoleParsed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoleParsedCopyWith<$Res> {
  factory $RoleParsedCopyWith(
          RoleParsed value, $Res Function(RoleParsed) then) =
      _$RoleParsedCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? display_name,
      String? display_name_np,
      String? name_final,
      String? name_combined,
      String? name,
      String? guard_name,
      int? is_for_office});
}

/// @nodoc
class _$RoleParsedCopyWithImpl<$Res> implements $RoleParsedCopyWith<$Res> {
  _$RoleParsedCopyWithImpl(this._value, this._then);

  final RoleParsed _value;
  // ignore: unused_field
  final $Res Function(RoleParsed) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? display_name = freezed,
    Object? display_name_np = freezed,
    Object? name_final = freezed,
    Object? name_combined = freezed,
    Object? name = freezed,
    Object? guard_name = freezed,
    Object? is_for_office = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      display_name: display_name == freezed
          ? _value.display_name
          : display_name // ignore: cast_nullable_to_non_nullable
              as String?,
      display_name_np: display_name_np == freezed
          ? _value.display_name_np
          : display_name_np // ignore: cast_nullable_to_non_nullable
              as String?,
      name_final: name_final == freezed
          ? _value.name_final
          : name_final // ignore: cast_nullable_to_non_nullable
              as String?,
      name_combined: name_combined == freezed
          ? _value.name_combined
          : name_combined // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      guard_name: guard_name == freezed
          ? _value.guard_name
          : guard_name // ignore: cast_nullable_to_non_nullable
              as String?,
      is_for_office: is_for_office == freezed
          ? _value.is_for_office
          : is_for_office // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$RoleParsedCopyWith<$Res> implements $RoleParsedCopyWith<$Res> {
  factory _$RoleParsedCopyWith(
          _RoleParsed value, $Res Function(_RoleParsed) then) =
      __$RoleParsedCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? display_name,
      String? display_name_np,
      String? name_final,
      String? name_combined,
      String? name,
      String? guard_name,
      int? is_for_office});
}

/// @nodoc
class __$RoleParsedCopyWithImpl<$Res> extends _$RoleParsedCopyWithImpl<$Res>
    implements _$RoleParsedCopyWith<$Res> {
  __$RoleParsedCopyWithImpl(
      _RoleParsed _value, $Res Function(_RoleParsed) _then)
      : super(_value, (v) => _then(v as _RoleParsed));

  @override
  _RoleParsed get _value => super._value as _RoleParsed;

  @override
  $Res call({
    Object? id = freezed,
    Object? display_name = freezed,
    Object? display_name_np = freezed,
    Object? name_final = freezed,
    Object? name_combined = freezed,
    Object? name = freezed,
    Object? guard_name = freezed,
    Object? is_for_office = freezed,
  }) {
    return _then(_RoleParsed(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      display_name: display_name == freezed
          ? _value.display_name
          : display_name // ignore: cast_nullable_to_non_nullable
              as String?,
      display_name_np: display_name_np == freezed
          ? _value.display_name_np
          : display_name_np // ignore: cast_nullable_to_non_nullable
              as String?,
      name_final: name_final == freezed
          ? _value.name_final
          : name_final // ignore: cast_nullable_to_non_nullable
              as String?,
      name_combined: name_combined == freezed
          ? _value.name_combined
          : name_combined // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      guard_name: guard_name == freezed
          ? _value.guard_name
          : guard_name // ignore: cast_nullable_to_non_nullable
              as String?,
      is_for_office: is_for_office == freezed
          ? _value.is_for_office
          : is_for_office // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RoleParsed implements _RoleParsed {
  const _$_RoleParsed(
      {required this.id,
      required this.display_name,
      required this.display_name_np,
      required this.name_final,
      required this.name_combined,
      required this.name,
      required this.guard_name,
      required this.is_for_office});

  factory _$_RoleParsed.fromJson(Map<String, dynamic> json) =>
      _$_$_RoleParsedFromJson(json);

  @override
  final int? id;
  @override
  final String? display_name;
  @override
  final String? display_name_np;
  @override
  final String? name_final;
  @override
  final String? name_combined;
  @override
  final String? name;
  @override
  final String? guard_name;
  @override
  final int? is_for_office;

  @override
  String toString() {
    return 'RoleParsed(id: $id, display_name: $display_name, display_name_np: $display_name_np, name_final: $name_final, name_combined: $name_combined, name: $name, guard_name: $guard_name, is_for_office: $is_for_office)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RoleParsed &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.display_name, display_name) ||
                const DeepCollectionEquality()
                    .equals(other.display_name, display_name)) &&
            (identical(other.display_name_np, display_name_np) ||
                const DeepCollectionEquality()
                    .equals(other.display_name_np, display_name_np)) &&
            (identical(other.name_final, name_final) ||
                const DeepCollectionEquality()
                    .equals(other.name_final, name_final)) &&
            (identical(other.name_combined, name_combined) ||
                const DeepCollectionEquality()
                    .equals(other.name_combined, name_combined)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.guard_name, guard_name) ||
                const DeepCollectionEquality()
                    .equals(other.guard_name, guard_name)) &&
            (identical(other.is_for_office, is_for_office) ||
                const DeepCollectionEquality()
                    .equals(other.is_for_office, is_for_office)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(display_name) ^
      const DeepCollectionEquality().hash(display_name_np) ^
      const DeepCollectionEquality().hash(name_final) ^
      const DeepCollectionEquality().hash(name_combined) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(guard_name) ^
      const DeepCollectionEquality().hash(is_for_office);

  @JsonKey(ignore: true)
  @override
  _$RoleParsedCopyWith<_RoleParsed> get copyWith =>
      __$RoleParsedCopyWithImpl<_RoleParsed>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RoleParsedToJson(this);
  }
}

abstract class _RoleParsed implements RoleParsed {
  const factory _RoleParsed(
      {required int? id,
      required String? display_name,
      required String? display_name_np,
      required String? name_final,
      required String? name_combined,
      required String? name,
      required String? guard_name,
      required int? is_for_office}) = _$_RoleParsed;

  factory _RoleParsed.fromJson(Map<String, dynamic> json) =
      _$_RoleParsed.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get display_name => throw _privateConstructorUsedError;
  @override
  String? get display_name_np => throw _privateConstructorUsedError;
  @override
  String? get name_final => throw _privateConstructorUsedError;
  @override
  String? get name_combined => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get guard_name => throw _privateConstructorUsedError;
  @override
  int? get is_for_office => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RoleParsedCopyWith<_RoleParsed> get copyWith =>
      throw _privateConstructorUsedError;
}

Source _$SourceFromJson(Map<String, dynamic> json) {
  return _Source.fromJson(json);
}

/// @nodoc
class _$SourceTearOff {
  const _$SourceTearOff();

  _Source call({required String? asd}) {
    return _Source(
      asd: asd,
    );
  }

  Source fromJson(Map<String, Object> json) {
    return Source.fromJson(json);
  }
}

/// @nodoc
const $Source = _$SourceTearOff();

/// @nodoc
mixin _$Source {
  String? get asd => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SourceCopyWith<Source> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SourceCopyWith<$Res> {
  factory $SourceCopyWith(Source value, $Res Function(Source) then) =
      _$SourceCopyWithImpl<$Res>;
  $Res call({String? asd});
}

/// @nodoc
class _$SourceCopyWithImpl<$Res> implements $SourceCopyWith<$Res> {
  _$SourceCopyWithImpl(this._value, this._then);

  final Source _value;
  // ignore: unused_field
  final $Res Function(Source) _then;

  @override
  $Res call({
    Object? asd = freezed,
  }) {
    return _then(_value.copyWith(
      asd: asd == freezed
          ? _value.asd
          : asd // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$SourceCopyWith<$Res> implements $SourceCopyWith<$Res> {
  factory _$SourceCopyWith(_Source value, $Res Function(_Source) then) =
      __$SourceCopyWithImpl<$Res>;
  @override
  $Res call({String? asd});
}

/// @nodoc
class __$SourceCopyWithImpl<$Res> extends _$SourceCopyWithImpl<$Res>
    implements _$SourceCopyWith<$Res> {
  __$SourceCopyWithImpl(_Source _value, $Res Function(_Source) _then)
      : super(_value, (v) => _then(v as _Source));

  @override
  _Source get _value => super._value as _Source;

  @override
  $Res call({
    Object? asd = freezed,
  }) {
    return _then(_Source(
      asd: asd == freezed
          ? _value.asd
          : asd // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Source implements _Source {
  const _$_Source({required this.asd});

  factory _$_Source.fromJson(Map<String, dynamic> json) =>
      _$_$_SourceFromJson(json);

  @override
  final String? asd;

  @override
  String toString() {
    return 'Source(asd: $asd)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Source &&
            (identical(other.asd, asd) ||
                const DeepCollectionEquality().equals(other.asd, asd)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(asd);

  @JsonKey(ignore: true)
  @override
  _$SourceCopyWith<_Source> get copyWith =>
      __$SourceCopyWithImpl<_Source>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SourceToJson(this);
  }
}

abstract class _Source implements Source {
  const factory _Source({required String? asd}) = _$_Source;

  factory _Source.fromJson(Map<String, dynamic> json) = _$_Source.fromJson;

  @override
  String? get asd => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SourceCopyWith<_Source> get copyWith => throw _privateConstructorUsedError;
}
