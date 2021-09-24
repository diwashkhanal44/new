part of 'note_cubit.dart';

@freezed
abstract class NoteState with _$NoteState {
  factory NoteState(
      {required List<Note> items,
      required List<Note> filteredItemsBasedOnDate}) = _NoteState;
}
