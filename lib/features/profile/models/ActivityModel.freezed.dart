// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'ActivityModel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ActivityModel _$ActivityModelFromJson(Map<String, dynamic> json) {
  return _ActivityModel.fromJson(json);
}

/// @nodoc
class _$ActivityModelTearOff {
  const _$ActivityModelTearOff();

  _ActivityModel call(
      {required List<Datum>? data,
      required Links? links,
      required Meta? meta}) {
    return _ActivityModel(
      data: data,
      links: links,
      meta: meta,
    );
  }

  ActivityModel fromJson(Map<String, Object> json) {
    return ActivityModel.fromJson(json);
  }
}

/// @nodoc
const $ActivityModel = _$ActivityModelTearOff();

/// @nodoc
mixin _$ActivityModel {
  List<Datum>? get data => throw _privateConstructorUsedError;
  Links? get links => throw _privateConstructorUsedError;
  Meta? get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActivityModelCopyWith<ActivityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityModelCopyWith<$Res> {
  factory $ActivityModelCopyWith(
          ActivityModel value, $Res Function(ActivityModel) then) =
      _$ActivityModelCopyWithImpl<$Res>;
  $Res call({List<Datum>? data, Links? links, Meta? meta});

  $LinksCopyWith<$Res>? get links;
  $MetaCopyWith<$Res>? get meta;
}

/// @nodoc
class _$ActivityModelCopyWithImpl<$Res>
    implements $ActivityModelCopyWith<$Res> {
  _$ActivityModelCopyWithImpl(this._value, this._then);

  final ActivityModel _value;
  // ignore: unused_field
  final $Res Function(ActivityModel) _then;

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
abstract class _$ActivityModelCopyWith<$Res>
    implements $ActivityModelCopyWith<$Res> {
  factory _$ActivityModelCopyWith(
          _ActivityModel value, $Res Function(_ActivityModel) then) =
      __$ActivityModelCopyWithImpl<$Res>;
  @override
  $Res call({List<Datum>? data, Links? links, Meta? meta});

  @override
  $LinksCopyWith<$Res>? get links;
  @override
  $MetaCopyWith<$Res>? get meta;
}

/// @nodoc
class __$ActivityModelCopyWithImpl<$Res>
    extends _$ActivityModelCopyWithImpl<$Res>
    implements _$ActivityModelCopyWith<$Res> {
  __$ActivityModelCopyWithImpl(
      _ActivityModel _value, $Res Function(_ActivityModel) _then)
      : super(_value, (v) => _then(v as _ActivityModel));

  @override
  _ActivityModel get _value => super._value as _ActivityModel;

  @override
  $Res call({
    Object? data = freezed,
    Object? links = freezed,
    Object? meta = freezed,
  }) {
    return _then(_ActivityModel(
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
class _$_ActivityModel implements _ActivityModel {
  const _$_ActivityModel(
      {required this.data, required this.links, required this.meta});

  factory _$_ActivityModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ActivityModelFromJson(json);

  @override
  final List<Datum>? data;
  @override
  final Links? links;
  @override
  final Meta? meta;

  @override
  String toString() {
    return 'ActivityModel(data: $data, links: $links, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ActivityModel &&
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
  _$ActivityModelCopyWith<_ActivityModel> get copyWith =>
      __$ActivityModelCopyWithImpl<_ActivityModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ActivityModelToJson(this);
  }
}

abstract class _ActivityModel implements ActivityModel {
  const factory _ActivityModel(
      {required List<Datum>? data,
      required Links? links,
      required Meta? meta}) = _$_ActivityModel;

  factory _ActivityModel.fromJson(Map<String, dynamic> json) =
      _$_ActivityModel.fromJson;

  @override
  List<Datum>? get data => throw _privateConstructorUsedError;
  @override
  Links? get links => throw _privateConstructorUsedError;
  @override
  Meta? get meta => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ActivityModelCopyWith<_ActivityModel> get copyWith =>
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
      required String? log_name,
      required String? description,
      required String? ip,
      required String? agent,
      required Properties? properties,
      required Causer? causer,
      required String? causer_type,
      required DateTime? created_at}) {
    return _Datum(
      id: id,
      log_name: log_name,
      description: description,
      ip: ip,
      agent: agent,
      properties: properties,
      causer: causer,
      causer_type: causer_type,
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
  String? get log_name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get ip => throw _privateConstructorUsedError;
  String? get agent => throw _privateConstructorUsedError;
  Properties? get properties => throw _privateConstructorUsedError;
  Causer? get causer => throw _privateConstructorUsedError;
  String? get causer_type => throw _privateConstructorUsedError;
  DateTime? get created_at => throw _privateConstructorUsedError;

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
      String? log_name,
      String? description,
      String? ip,
      String? agent,
      Properties? properties,
      Causer? causer,
      String? causer_type,
      DateTime? created_at});

  $PropertiesCopyWith<$Res>? get properties;
  $CauserCopyWith<$Res>? get causer;
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
    Object? log_name = freezed,
    Object? description = freezed,
    Object? ip = freezed,
    Object? agent = freezed,
    Object? properties = freezed,
    Object? causer = freezed,
    Object? causer_type = freezed,
    Object? created_at = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      log_name: log_name == freezed
          ? _value.log_name
          : log_name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      ip: ip == freezed
          ? _value.ip
          : ip // ignore: cast_nullable_to_non_nullable
              as String?,
      agent: agent == freezed
          ? _value.agent
          : agent // ignore: cast_nullable_to_non_nullable
              as String?,
      properties: properties == freezed
          ? _value.properties
          : properties // ignore: cast_nullable_to_non_nullable
              as Properties?,
      causer: causer == freezed
          ? _value.causer
          : causer // ignore: cast_nullable_to_non_nullable
              as Causer?,
      causer_type: causer_type == freezed
          ? _value.causer_type
          : causer_type // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }

  @override
  $PropertiesCopyWith<$Res>? get properties {
    if (_value.properties == null) {
      return null;
    }

    return $PropertiesCopyWith<$Res>(_value.properties!, (value) {
      return _then(_value.copyWith(properties: value));
    });
  }

  @override
  $CauserCopyWith<$Res>? get causer {
    if (_value.causer == null) {
      return null;
    }

    return $CauserCopyWith<$Res>(_value.causer!, (value) {
      return _then(_value.copyWith(causer: value));
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
      String? log_name,
      String? description,
      String? ip,
      String? agent,
      Properties? properties,
      Causer? causer,
      String? causer_type,
      DateTime? created_at});

  @override
  $PropertiesCopyWith<$Res>? get properties;
  @override
  $CauserCopyWith<$Res>? get causer;
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
    Object? log_name = freezed,
    Object? description = freezed,
    Object? ip = freezed,
    Object? agent = freezed,
    Object? properties = freezed,
    Object? causer = freezed,
    Object? causer_type = freezed,
    Object? created_at = freezed,
  }) {
    return _then(_Datum(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      log_name: log_name == freezed
          ? _value.log_name
          : log_name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      ip: ip == freezed
          ? _value.ip
          : ip // ignore: cast_nullable_to_non_nullable
              as String?,
      agent: agent == freezed
          ? _value.agent
          : agent // ignore: cast_nullable_to_non_nullable
              as String?,
      properties: properties == freezed
          ? _value.properties
          : properties // ignore: cast_nullable_to_non_nullable
              as Properties?,
      causer: causer == freezed
          ? _value.causer
          : causer // ignore: cast_nullable_to_non_nullable
              as Causer?,
      causer_type: causer_type == freezed
          ? _value.causer_type
          : causer_type // ignore: cast_nullable_to_non_nullable
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
class _$_Datum implements _Datum {
  const _$_Datum(
      {required this.id,
      required this.log_name,
      required this.description,
      required this.ip,
      required this.agent,
      required this.properties,
      required this.causer,
      required this.causer_type,
      required this.created_at});

  factory _$_Datum.fromJson(Map<String, dynamic> json) =>
      _$_$_DatumFromJson(json);

  @override
  final int? id;
  @override
  final String? log_name;
  @override
  final String? description;
  @override
  final String? ip;
  @override
  final String? agent;
  @override
  final Properties? properties;
  @override
  final Causer? causer;
  @override
  final String? causer_type;
  @override
  final DateTime? created_at;

  @override
  String toString() {
    return 'Datum(id: $id, log_name: $log_name, description: $description, ip: $ip, agent: $agent, properties: $properties, causer: $causer, causer_type: $causer_type, created_at: $created_at)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Datum &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.log_name, log_name) ||
                const DeepCollectionEquality()
                    .equals(other.log_name, log_name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.ip, ip) ||
                const DeepCollectionEquality().equals(other.ip, ip)) &&
            (identical(other.agent, agent) ||
                const DeepCollectionEquality().equals(other.agent, agent)) &&
            (identical(other.properties, properties) ||
                const DeepCollectionEquality()
                    .equals(other.properties, properties)) &&
            (identical(other.causer, causer) ||
                const DeepCollectionEquality().equals(other.causer, causer)) &&
            (identical(other.causer_type, causer_type) ||
                const DeepCollectionEquality()
                    .equals(other.causer_type, causer_type)) &&
            (identical(other.created_at, created_at) ||
                const DeepCollectionEquality()
                    .equals(other.created_at, created_at)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(log_name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(ip) ^
      const DeepCollectionEquality().hash(agent) ^
      const DeepCollectionEquality().hash(properties) ^
      const DeepCollectionEquality().hash(causer) ^
      const DeepCollectionEquality().hash(causer_type) ^
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
      required String? log_name,
      required String? description,
      required String? ip,
      required String? agent,
      required Properties? properties,
      required Causer? causer,
      required String? causer_type,
      required DateTime? created_at}) = _$_Datum;

  factory _Datum.fromJson(Map<String, dynamic> json) = _$_Datum.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get log_name => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  String? get ip => throw _privateConstructorUsedError;
  @override
  String? get agent => throw _privateConstructorUsedError;
  @override
  Properties? get properties => throw _privateConstructorUsedError;
  @override
  Causer? get causer => throw _privateConstructorUsedError;
  @override
  String? get causer_type => throw _privateConstructorUsedError;
  @override
  DateTime? get created_at => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DatumCopyWith<_Datum> get copyWith => throw _privateConstructorUsedError;
}

Causer _$CauserFromJson(Map<String, dynamic> json) {
  return _Causer.fromJson(json);
}

/// @nodoc
class _$CauserTearOff {
  const _$CauserTearOff();

  _Causer call(
      {required int? id,
      required String? name_final,
      required int? value,
      required String? email,
      required String? mobile,
      required String? username,
      required List<Role>? roles}) {
    return _Causer(
      id: id,
      name_final: name_final,
      value: value,
      email: email,
      mobile: mobile,
      username: username,
      roles: roles,
    );
  }

  Causer fromJson(Map<String, Object> json) {
    return Causer.fromJson(json);
  }
}

/// @nodoc
const $Causer = _$CauserTearOff();

/// @nodoc
mixin _$Causer {
  int? get id => throw _privateConstructorUsedError;
  String? get name_final => throw _privateConstructorUsedError;
  int? get value => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get mobile => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  List<Role>? get roles => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CauserCopyWith<Causer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CauserCopyWith<$Res> {
  factory $CauserCopyWith(Causer value, $Res Function(Causer) then) =
      _$CauserCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? name_final,
      int? value,
      String? email,
      String? mobile,
      String? username,
      List<Role>? roles});
}

/// @nodoc
class _$CauserCopyWithImpl<$Res> implements $CauserCopyWith<$Res> {
  _$CauserCopyWithImpl(this._value, this._then);

  final Causer _value;
  // ignore: unused_field
  final $Res Function(Causer) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name_final = freezed,
    Object? value = freezed,
    Object? email = freezed,
    Object? mobile = freezed,
    Object? username = freezed,
    Object? roles = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name_final: name_final == freezed
          ? _value.name_final
          : name_final // ignore: cast_nullable_to_non_nullable
              as String?,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile: mobile == freezed
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      roles: roles == freezed
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<Role>?,
    ));
  }
}

/// @nodoc
abstract class _$CauserCopyWith<$Res> implements $CauserCopyWith<$Res> {
  factory _$CauserCopyWith(_Causer value, $Res Function(_Causer) then) =
      __$CauserCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? name_final,
      int? value,
      String? email,
      String? mobile,
      String? username,
      List<Role>? roles});
}

/// @nodoc
class __$CauserCopyWithImpl<$Res> extends _$CauserCopyWithImpl<$Res>
    implements _$CauserCopyWith<$Res> {
  __$CauserCopyWithImpl(_Causer _value, $Res Function(_Causer) _then)
      : super(_value, (v) => _then(v as _Causer));

  @override
  _Causer get _value => super._value as _Causer;

  @override
  $Res call({
    Object? id = freezed,
    Object? name_final = freezed,
    Object? value = freezed,
    Object? email = freezed,
    Object? mobile = freezed,
    Object? username = freezed,
    Object? roles = freezed,
  }) {
    return _then(_Causer(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name_final: name_final == freezed
          ? _value.name_final
          : name_final // ignore: cast_nullable_to_non_nullable
              as String?,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile: mobile == freezed
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      roles: roles == freezed
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<Role>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Causer implements _Causer {
  const _$_Causer(
      {required this.id,
      required this.name_final,
      required this.value,
      required this.email,
      required this.mobile,
      required this.username,
      required this.roles});

  factory _$_Causer.fromJson(Map<String, dynamic> json) =>
      _$_$_CauserFromJson(json);

  @override
  final int? id;
  @override
  final String? name_final;
  @override
  final int? value;
  @override
  final String? email;
  @override
  final String? mobile;
  @override
  final String? username;
  @override
  final List<Role>? roles;

  @override
  String toString() {
    return 'Causer(id: $id, name_final: $name_final, value: $value, email: $email, mobile: $mobile, username: $username, roles: $roles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Causer &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name_final, name_final) ||
                const DeepCollectionEquality()
                    .equals(other.name_final, name_final)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.mobile, mobile) ||
                const DeepCollectionEquality().equals(other.mobile, mobile)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.roles, roles) ||
                const DeepCollectionEquality().equals(other.roles, roles)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name_final) ^
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(mobile) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(roles);

  @JsonKey(ignore: true)
  @override
  _$CauserCopyWith<_Causer> get copyWith =>
      __$CauserCopyWithImpl<_Causer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CauserToJson(this);
  }
}

abstract class _Causer implements Causer {
  const factory _Causer(
      {required int? id,
      required String? name_final,
      required int? value,
      required String? email,
      required String? mobile,
      required String? username,
      required List<Role>? roles}) = _$_Causer;

  factory _Causer.fromJson(Map<String, dynamic> json) = _$_Causer.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get name_final => throw _privateConstructorUsedError;
  @override
  int? get value => throw _privateConstructorUsedError;
  @override
  String? get email => throw _privateConstructorUsedError;
  @override
  String? get mobile => throw _privateConstructorUsedError;
  @override
  String? get username => throw _privateConstructorUsedError;
  @override
  List<Role>? get roles => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CauserCopyWith<_Causer> get copyWith => throw _privateConstructorUsedError;
}

Role _$RoleFromJson(Map<String, dynamic> json) {
  return _Role.fromJson(json);
}

/// @nodoc
class _$RoleTearOff {
  const _$RoleTearOff();

  _Role call(
      {required int? id,
      required String? display_name,
      required String? display_name_np,
      required String? name_final,
      required String? name_combined,
      required String? name,
      required String? guard_name,
      required int? is_for_office}) {
    return _Role(
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

  Role fromJson(Map<String, Object> json) {
    return Role.fromJson(json);
  }
}

/// @nodoc
const $Role = _$RoleTearOff();

/// @nodoc
mixin _$Role {
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
  $RoleCopyWith<Role> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoleCopyWith<$Res> {
  factory $RoleCopyWith(Role value, $Res Function(Role) then) =
      _$RoleCopyWithImpl<$Res>;
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
class _$RoleCopyWithImpl<$Res> implements $RoleCopyWith<$Res> {
  _$RoleCopyWithImpl(this._value, this._then);

  final Role _value;
  // ignore: unused_field
  final $Res Function(Role) _then;

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
abstract class _$RoleCopyWith<$Res> implements $RoleCopyWith<$Res> {
  factory _$RoleCopyWith(_Role value, $Res Function(_Role) then) =
      __$RoleCopyWithImpl<$Res>;
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
class __$RoleCopyWithImpl<$Res> extends _$RoleCopyWithImpl<$Res>
    implements _$RoleCopyWith<$Res> {
  __$RoleCopyWithImpl(_Role _value, $Res Function(_Role) _then)
      : super(_value, (v) => _then(v as _Role));

  @override
  _Role get _value => super._value as _Role;

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
    return _then(_Role(
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
class _$_Role implements _Role {
  const _$_Role(
      {required this.id,
      required this.display_name,
      required this.display_name_np,
      required this.name_final,
      required this.name_combined,
      required this.name,
      required this.guard_name,
      required this.is_for_office});

  factory _$_Role.fromJson(Map<String, dynamic> json) =>
      _$_$_RoleFromJson(json);

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
    return 'Role(id: $id, display_name: $display_name, display_name_np: $display_name_np, name_final: $name_final, name_combined: $name_combined, name: $name, guard_name: $guard_name, is_for_office: $is_for_office)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Role &&
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
  _$RoleCopyWith<_Role> get copyWith =>
      __$RoleCopyWithImpl<_Role>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RoleToJson(this);
  }
}

abstract class _Role implements Role {
  const factory _Role(
      {required int? id,
      required String? display_name,
      required String? display_name_np,
      required String? name_final,
      required String? name_combined,
      required String? name,
      required String? guard_name,
      required int? is_for_office}) = _$_Role;

  factory _Role.fromJson(Map<String, dynamic> json) = _$_Role.fromJson;

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
  _$RoleCopyWith<_Role> get copyWith => throw _privateConstructorUsedError;
}

Properties _$PropertiesFromJson(Map<String, dynamic> json) {
  return _Properties.fromJson(json);
}

/// @nodoc
class _$PropertiesTearOff {
  const _$PropertiesTearOff();

  _Properties call({required Old? old, required Attributes? attributes}) {
    return _Properties(
      old: old,
      attributes: attributes,
    );
  }

  Properties fromJson(Map<String, Object> json) {
    return Properties.fromJson(json);
  }
}

/// @nodoc
const $Properties = _$PropertiesTearOff();

/// @nodoc
mixin _$Properties {
  Old? get old => throw _privateConstructorUsedError;
  Attributes? get attributes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PropertiesCopyWith<Properties> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertiesCopyWith<$Res> {
  factory $PropertiesCopyWith(
          Properties value, $Res Function(Properties) then) =
      _$PropertiesCopyWithImpl<$Res>;
  $Res call({Old? old, Attributes? attributes});

  $OldCopyWith<$Res>? get old;
  $AttributesCopyWith<$Res>? get attributes;
}

/// @nodoc
class _$PropertiesCopyWithImpl<$Res> implements $PropertiesCopyWith<$Res> {
  _$PropertiesCopyWithImpl(this._value, this._then);

  final Properties _value;
  // ignore: unused_field
  final $Res Function(Properties) _then;

  @override
  $Res call({
    Object? old = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_value.copyWith(
      old: old == freezed
          ? _value.old
          : old // ignore: cast_nullable_to_non_nullable
              as Old?,
      attributes: attributes == freezed
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Attributes?,
    ));
  }

  @override
  $OldCopyWith<$Res>? get old {
    if (_value.old == null) {
      return null;
    }

    return $OldCopyWith<$Res>(_value.old!, (value) {
      return _then(_value.copyWith(old: value));
    });
  }

  @override
  $AttributesCopyWith<$Res>? get attributes {
    if (_value.attributes == null) {
      return null;
    }

    return $AttributesCopyWith<$Res>(_value.attributes!, (value) {
      return _then(_value.copyWith(attributes: value));
    });
  }
}

/// @nodoc
abstract class _$PropertiesCopyWith<$Res> implements $PropertiesCopyWith<$Res> {
  factory _$PropertiesCopyWith(
          _Properties value, $Res Function(_Properties) then) =
      __$PropertiesCopyWithImpl<$Res>;
  @override
  $Res call({Old? old, Attributes? attributes});

  @override
  $OldCopyWith<$Res>? get old;
  @override
  $AttributesCopyWith<$Res>? get attributes;
}

/// @nodoc
class __$PropertiesCopyWithImpl<$Res> extends _$PropertiesCopyWithImpl<$Res>
    implements _$PropertiesCopyWith<$Res> {
  __$PropertiesCopyWithImpl(
      _Properties _value, $Res Function(_Properties) _then)
      : super(_value, (v) => _then(v as _Properties));

  @override
  _Properties get _value => super._value as _Properties;

  @override
  $Res call({
    Object? old = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_Properties(
      old: old == freezed
          ? _value.old
          : old // ignore: cast_nullable_to_non_nullable
              as Old?,
      attributes: attributes == freezed
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Attributes?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Properties implements _Properties {
  const _$_Properties({required this.old, required this.attributes});

  factory _$_Properties.fromJson(Map<String, dynamic> json) =>
      _$_$_PropertiesFromJson(json);

  @override
  final Old? old;
  @override
  final Attributes? attributes;

  @override
  String toString() {
    return 'Properties(old: $old, attributes: $attributes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Properties &&
            (identical(other.old, old) ||
                const DeepCollectionEquality().equals(other.old, old)) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality()
                    .equals(other.attributes, attributes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(old) ^
      const DeepCollectionEquality().hash(attributes);

  @JsonKey(ignore: true)
  @override
  _$PropertiesCopyWith<_Properties> get copyWith =>
      __$PropertiesCopyWithImpl<_Properties>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PropertiesToJson(this);
  }
}

abstract class _Properties implements Properties {
  const factory _Properties(
      {required Old? old, required Attributes? attributes}) = _$_Properties;

  factory _Properties.fromJson(Map<String, dynamic> json) =
      _$_Properties.fromJson;

  @override
  Old? get old => throw _privateConstructorUsedError;
  @override
  Attributes? get attributes => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PropertiesCopyWith<_Properties> get copyWith =>
      throw _privateConstructorUsedError;
}

Attributes _$AttributesFromJson(Map<String, dynamic> json) {
  return _Attributes.fromJson(json);
}

/// @nodoc
class _$AttributesTearOff {
  const _$AttributesTearOff();

  _Attributes call(
      {required String? name,
      required String? email,
      required String? mobile,
      required String? name_np,
      required DateTime? updated_at,
      required int? id,
      required String? comment,
      required int? news_id,
      required int? reply_id,
      required int? parent_id,
      required DateTime? created_at,
      required DateTime? deleted_at,
      required int? publisher_id}) {
    return _Attributes(
      name: name,
      email: email,
      mobile: mobile,
      name_np: name_np,
      updated_at: updated_at,
      id: id,
      comment: comment,
      news_id: news_id,
      reply_id: reply_id,
      parent_id: parent_id,
      created_at: created_at,
      deleted_at: deleted_at,
      publisher_id: publisher_id,
    );
  }

  Attributes fromJson(Map<String, Object> json) {
    return Attributes.fromJson(json);
  }
}

/// @nodoc
const $Attributes = _$AttributesTearOff();

/// @nodoc
mixin _$Attributes {
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get mobile => throw _privateConstructorUsedError;
  String? get name_np => throw _privateConstructorUsedError;
  DateTime? get updated_at => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  int? get news_id => throw _privateConstructorUsedError;
  int? get reply_id => throw _privateConstructorUsedError;
  int? get parent_id => throw _privateConstructorUsedError;
  DateTime? get created_at => throw _privateConstructorUsedError;
  DateTime? get deleted_at => throw _privateConstructorUsedError;
  int? get publisher_id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttributesCopyWith<Attributes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttributesCopyWith<$Res> {
  factory $AttributesCopyWith(
          Attributes value, $Res Function(Attributes) then) =
      _$AttributesCopyWithImpl<$Res>;
  $Res call(
      {String? name,
      String? email,
      String? mobile,
      String? name_np,
      DateTime? updated_at,
      int? id,
      String? comment,
      int? news_id,
      int? reply_id,
      int? parent_id,
      DateTime? created_at,
      DateTime? deleted_at,
      int? publisher_id});
}

/// @nodoc
class _$AttributesCopyWithImpl<$Res> implements $AttributesCopyWith<$Res> {
  _$AttributesCopyWithImpl(this._value, this._then);

  final Attributes _value;
  // ignore: unused_field
  final $Res Function(Attributes) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? mobile = freezed,
    Object? name_np = freezed,
    Object? updated_at = freezed,
    Object? id = freezed,
    Object? comment = freezed,
    Object? news_id = freezed,
    Object? reply_id = freezed,
    Object? parent_id = freezed,
    Object? created_at = freezed,
    Object? deleted_at = freezed,
    Object? publisher_id = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile: mobile == freezed
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      name_np: name_np == freezed
          ? _value.name_np
          : name_np // ignore: cast_nullable_to_non_nullable
              as String?,
      updated_at: updated_at == freezed
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      news_id: news_id == freezed
          ? _value.news_id
          : news_id // ignore: cast_nullable_to_non_nullable
              as int?,
      reply_id: reply_id == freezed
          ? _value.reply_id
          : reply_id // ignore: cast_nullable_to_non_nullable
              as int?,
      parent_id: parent_id == freezed
          ? _value.parent_id
          : parent_id // ignore: cast_nullable_to_non_nullable
              as int?,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deleted_at: deleted_at == freezed
          ? _value.deleted_at
          : deleted_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      publisher_id: publisher_id == freezed
          ? _value.publisher_id
          : publisher_id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$AttributesCopyWith<$Res> implements $AttributesCopyWith<$Res> {
  factory _$AttributesCopyWith(
          _Attributes value, $Res Function(_Attributes) then) =
      __$AttributesCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? name,
      String? email,
      String? mobile,
      String? name_np,
      DateTime? updated_at,
      int? id,
      String? comment,
      int? news_id,
      int? reply_id,
      int? parent_id,
      DateTime? created_at,
      DateTime? deleted_at,
      int? publisher_id});
}

/// @nodoc
class __$AttributesCopyWithImpl<$Res> extends _$AttributesCopyWithImpl<$Res>
    implements _$AttributesCopyWith<$Res> {
  __$AttributesCopyWithImpl(
      _Attributes _value, $Res Function(_Attributes) _then)
      : super(_value, (v) => _then(v as _Attributes));

  @override
  _Attributes get _value => super._value as _Attributes;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? mobile = freezed,
    Object? name_np = freezed,
    Object? updated_at = freezed,
    Object? id = freezed,
    Object? comment = freezed,
    Object? news_id = freezed,
    Object? reply_id = freezed,
    Object? parent_id = freezed,
    Object? created_at = freezed,
    Object? deleted_at = freezed,
    Object? publisher_id = freezed,
  }) {
    return _then(_Attributes(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile: mobile == freezed
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      name_np: name_np == freezed
          ? _value.name_np
          : name_np // ignore: cast_nullable_to_non_nullable
              as String?,
      updated_at: updated_at == freezed
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      news_id: news_id == freezed
          ? _value.news_id
          : news_id // ignore: cast_nullable_to_non_nullable
              as int?,
      reply_id: reply_id == freezed
          ? _value.reply_id
          : reply_id // ignore: cast_nullable_to_non_nullable
              as int?,
      parent_id: parent_id == freezed
          ? _value.parent_id
          : parent_id // ignore: cast_nullable_to_non_nullable
              as int?,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deleted_at: deleted_at == freezed
          ? _value.deleted_at
          : deleted_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      publisher_id: publisher_id == freezed
          ? _value.publisher_id
          : publisher_id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Attributes implements _Attributes {
  const _$_Attributes(
      {required this.name,
      required this.email,
      required this.mobile,
      required this.name_np,
      required this.updated_at,
      required this.id,
      required this.comment,
      required this.news_id,
      required this.reply_id,
      required this.parent_id,
      required this.created_at,
      required this.deleted_at,
      required this.publisher_id});

  factory _$_Attributes.fromJson(Map<String, dynamic> json) =>
      _$_$_AttributesFromJson(json);

  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? mobile;
  @override
  final String? name_np;
  @override
  final DateTime? updated_at;
  @override
  final int? id;
  @override
  final String? comment;
  @override
  final int? news_id;
  @override
  final int? reply_id;
  @override
  final int? parent_id;
  @override
  final DateTime? created_at;
  @override
  final DateTime? deleted_at;
  @override
  final int? publisher_id;

  @override
  String toString() {
    return 'Attributes(name: $name, email: $email, mobile: $mobile, name_np: $name_np, updated_at: $updated_at, id: $id, comment: $comment, news_id: $news_id, reply_id: $reply_id, parent_id: $parent_id, created_at: $created_at, deleted_at: $deleted_at, publisher_id: $publisher_id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Attributes &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.mobile, mobile) ||
                const DeepCollectionEquality().equals(other.mobile, mobile)) &&
            (identical(other.name_np, name_np) ||
                const DeepCollectionEquality()
                    .equals(other.name_np, name_np)) &&
            (identical(other.updated_at, updated_at) ||
                const DeepCollectionEquality()
                    .equals(other.updated_at, updated_at)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.comment, comment) ||
                const DeepCollectionEquality()
                    .equals(other.comment, comment)) &&
            (identical(other.news_id, news_id) ||
                const DeepCollectionEquality()
                    .equals(other.news_id, news_id)) &&
            (identical(other.reply_id, reply_id) ||
                const DeepCollectionEquality()
                    .equals(other.reply_id, reply_id)) &&
            (identical(other.parent_id, parent_id) ||
                const DeepCollectionEquality()
                    .equals(other.parent_id, parent_id)) &&
            (identical(other.created_at, created_at) ||
                const DeepCollectionEquality()
                    .equals(other.created_at, created_at)) &&
            (identical(other.deleted_at, deleted_at) ||
                const DeepCollectionEquality()
                    .equals(other.deleted_at, deleted_at)) &&
            (identical(other.publisher_id, publisher_id) ||
                const DeepCollectionEquality()
                    .equals(other.publisher_id, publisher_id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(mobile) ^
      const DeepCollectionEquality().hash(name_np) ^
      const DeepCollectionEquality().hash(updated_at) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(comment) ^
      const DeepCollectionEquality().hash(news_id) ^
      const DeepCollectionEquality().hash(reply_id) ^
      const DeepCollectionEquality().hash(parent_id) ^
      const DeepCollectionEquality().hash(created_at) ^
      const DeepCollectionEquality().hash(deleted_at) ^
      const DeepCollectionEquality().hash(publisher_id);

  @JsonKey(ignore: true)
  @override
  _$AttributesCopyWith<_Attributes> get copyWith =>
      __$AttributesCopyWithImpl<_Attributes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AttributesToJson(this);
  }
}

abstract class _Attributes implements Attributes {
  const factory _Attributes(
      {required String? name,
      required String? email,
      required String? mobile,
      required String? name_np,
      required DateTime? updated_at,
      required int? id,
      required String? comment,
      required int? news_id,
      required int? reply_id,
      required int? parent_id,
      required DateTime? created_at,
      required DateTime? deleted_at,
      required int? publisher_id}) = _$_Attributes;

  factory _Attributes.fromJson(Map<String, dynamic> json) =
      _$_Attributes.fromJson;

  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get email => throw _privateConstructorUsedError;
  @override
  String? get mobile => throw _privateConstructorUsedError;
  @override
  String? get name_np => throw _privateConstructorUsedError;
  @override
  DateTime? get updated_at => throw _privateConstructorUsedError;
  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get comment => throw _privateConstructorUsedError;
  @override
  int? get news_id => throw _privateConstructorUsedError;
  @override
  int? get reply_id => throw _privateConstructorUsedError;
  @override
  int? get parent_id => throw _privateConstructorUsedError;
  @override
  DateTime? get created_at => throw _privateConstructorUsedError;
  @override
  DateTime? get deleted_at => throw _privateConstructorUsedError;
  @override
  int? get publisher_id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AttributesCopyWith<_Attributes> get copyWith =>
      throw _privateConstructorUsedError;
}

Old _$OldFromJson(Map<String, dynamic> json) {
  return _Old.fromJson(json);
}

/// @nodoc
class _$OldTearOff {
  const _$OldTearOff();

  _Old call(
      {required String? name,
      required String? email,
      required String? mobile,
      required String? name_np,
      required DateTime? updated_at}) {
    return _Old(
      name: name,
      email: email,
      mobile: mobile,
      name_np: name_np,
      updated_at: updated_at,
    );
  }

  Old fromJson(Map<String, Object> json) {
    return Old.fromJson(json);
  }
}

/// @nodoc
const $Old = _$OldTearOff();

/// @nodoc
mixin _$Old {
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get mobile => throw _privateConstructorUsedError;
  String? get name_np => throw _privateConstructorUsedError;
  DateTime? get updated_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OldCopyWith<Old> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OldCopyWith<$Res> {
  factory $OldCopyWith(Old value, $Res Function(Old) then) =
      _$OldCopyWithImpl<$Res>;
  $Res call(
      {String? name,
      String? email,
      String? mobile,
      String? name_np,
      DateTime? updated_at});
}

/// @nodoc
class _$OldCopyWithImpl<$Res> implements $OldCopyWith<$Res> {
  _$OldCopyWithImpl(this._value, this._then);

  final Old _value;
  // ignore: unused_field
  final $Res Function(Old) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? mobile = freezed,
    Object? name_np = freezed,
    Object? updated_at = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile: mobile == freezed
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      name_np: name_np == freezed
          ? _value.name_np
          : name_np // ignore: cast_nullable_to_non_nullable
              as String?,
      updated_at: updated_at == freezed
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$OldCopyWith<$Res> implements $OldCopyWith<$Res> {
  factory _$OldCopyWith(_Old value, $Res Function(_Old) then) =
      __$OldCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? name,
      String? email,
      String? mobile,
      String? name_np,
      DateTime? updated_at});
}

/// @nodoc
class __$OldCopyWithImpl<$Res> extends _$OldCopyWithImpl<$Res>
    implements _$OldCopyWith<$Res> {
  __$OldCopyWithImpl(_Old _value, $Res Function(_Old) _then)
      : super(_value, (v) => _then(v as _Old));

  @override
  _Old get _value => super._value as _Old;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? mobile = freezed,
    Object? name_np = freezed,
    Object? updated_at = freezed,
  }) {
    return _then(_Old(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile: mobile == freezed
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      name_np: name_np == freezed
          ? _value.name_np
          : name_np // ignore: cast_nullable_to_non_nullable
              as String?,
      updated_at: updated_at == freezed
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Old implements _Old {
  const _$_Old(
      {required this.name,
      required this.email,
      required this.mobile,
      required this.name_np,
      required this.updated_at});

  factory _$_Old.fromJson(Map<String, dynamic> json) => _$_$_OldFromJson(json);

  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? mobile;
  @override
  final String? name_np;
  @override
  final DateTime? updated_at;

  @override
  String toString() {
    return 'Old(name: $name, email: $email, mobile: $mobile, name_np: $name_np, updated_at: $updated_at)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Old &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.mobile, mobile) ||
                const DeepCollectionEquality().equals(other.mobile, mobile)) &&
            (identical(other.name_np, name_np) ||
                const DeepCollectionEquality()
                    .equals(other.name_np, name_np)) &&
            (identical(other.updated_at, updated_at) ||
                const DeepCollectionEquality()
                    .equals(other.updated_at, updated_at)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(mobile) ^
      const DeepCollectionEquality().hash(name_np) ^
      const DeepCollectionEquality().hash(updated_at);

  @JsonKey(ignore: true)
  @override
  _$OldCopyWith<_Old> get copyWith =>
      __$OldCopyWithImpl<_Old>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_OldToJson(this);
  }
}

abstract class _Old implements Old {
  const factory _Old(
      {required String? name,
      required String? email,
      required String? mobile,
      required String? name_np,
      required DateTime? updated_at}) = _$_Old;

  factory _Old.fromJson(Map<String, dynamic> json) = _$_Old.fromJson;

  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get email => throw _privateConstructorUsedError;
  @override
  String? get mobile => throw _privateConstructorUsedError;
  @override
  String? get name_np => throw _privateConstructorUsedError;
  @override
  DateTime? get updated_at => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OldCopyWith<_Old> get copyWith => throw _privateConstructorUsedError;
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
