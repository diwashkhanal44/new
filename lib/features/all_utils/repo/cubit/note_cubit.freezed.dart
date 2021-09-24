// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'note_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NoteStateTearOff {
  const _$NoteStateTearOff();

  _NoteState call(
      {required List<Note> items,
      required List<Note> filteredItemsBasedOnDate}) {
    return _NoteState(
      items: items,
      filteredItemsBasedOnDate: filteredItemsBasedOnDate,
    );
  }
}

/// @nodoc
const $NoteState = _$NoteStateTearOff();

/// @nodoc
mixin _$NoteState {
  List<Note> get items => throw _privateConstructorUsedError;
  List<Note> get filteredItemsBasedOnDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NoteStateCopyWith<NoteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteStateCopyWith<$Res> {
  factory $NoteStateCopyWith(NoteState value, $Res Function(NoteState) then) =
      _$NoteStateCopyWithImpl<$Res>;
  $Res call({List<Note> items, List<Note> filteredItemsBasedOnDate});
}

/// @nodoc
class _$NoteStateCopyWithImpl<$Res> implements $NoteStateCopyWith<$Res> {
  _$NoteStateCopyWithImpl(this._value, this._then);

  final NoteState _value;
  // ignore: unused_field
  final $Res Function(NoteState) _then;

  @override
  $Res call({
    Object? items = freezed,
    Object? filteredItemsBasedOnDate = freezed,
  }) {
    return _then(_value.copyWith(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Note>,
      filteredItemsBasedOnDate: filteredItemsBasedOnDate == freezed
          ? _value.filteredItemsBasedOnDate
          : filteredItemsBasedOnDate // ignore: cast_nullable_to_non_nullable
              as List<Note>,
    ));
  }
}

/// @nodoc
abstract class _$NoteStateCopyWith<$Res> implements $NoteStateCopyWith<$Res> {
  factory _$NoteStateCopyWith(
          _NoteState value, $Res Function(_NoteState) then) =
      __$NoteStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Note> items, List<Note> filteredItemsBasedOnDate});
}

/// @nodoc
class __$NoteStateCopyWithImpl<$Res> extends _$NoteStateCopyWithImpl<$Res>
    implements _$NoteStateCopyWith<$Res> {
  __$NoteStateCopyWithImpl(_NoteState _value, $Res Function(_NoteState) _then)
      : super(_value, (v) => _then(v as _NoteState));

  @override
  _NoteState get _value => super._value as _NoteState;

  @override
  $Res call({
    Object? items = freezed,
    Object? filteredItemsBasedOnDate = freezed,
  }) {
    return _then(_NoteState(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Note>,
      filteredItemsBasedOnDate: filteredItemsBasedOnDate == freezed
          ? _value.filteredItemsBasedOnDate
          : filteredItemsBasedOnDate // ignore: cast_nullable_to_non_nullable
              as List<Note>,
    ));
  }
}

/// @nodoc

class _$_NoteState implements _NoteState {
  _$_NoteState({required this.items, required this.filteredItemsBasedOnDate});

  @override
  final List<Note> items;
  @override
  final List<Note> filteredItemsBasedOnDate;

  @override
  String toString() {
    return 'NoteState(items: $items, filteredItemsBasedOnDate: $filteredItemsBasedOnDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NoteState &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(
                    other.filteredItemsBasedOnDate, filteredItemsBasedOnDate) ||
                const DeepCollectionEquality().equals(
                    other.filteredItemsBasedOnDate, filteredItemsBasedOnDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(filteredItemsBasedOnDate);

  @JsonKey(ignore: true)
  @override
  _$NoteStateCopyWith<_NoteState> get copyWith =>
      __$NoteStateCopyWithImpl<_NoteState>(this, _$identity);
}

abstract class _NoteState implements NoteState {
  factory _NoteState(
      {required List<Note> items,
      required List<Note> filteredItemsBasedOnDate}) = _$_NoteState;

  @override
  List<Note> get items => throw _privateConstructorUsedError;
  @override
  List<Note> get filteredItemsBasedOnDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NoteStateCopyWith<_NoteState> get copyWith =>
      throw _privateConstructorUsedError;
}
