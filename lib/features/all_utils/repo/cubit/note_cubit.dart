import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:you/features/all_utils/models/NoteModels.dart';

import '../DatabaseHelper.dart';

part 'note_cubit.freezed.dart';
part 'note_state.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(NoteState(filteredItemsBasedOnDate: [], items: [])) {
    getNotes();
  }

  Future getNotes() async {
    final notesList = await DatabaseHelper.getNotesFromDB();
    final _items = List<Note>.from(notesList
        .map((item) => Note(item['id'], item['content'], item['color'])));
    emit(NoteState(
        items: _items,
        filteredItemsBasedOnDate: state.filteredItemsBasedOnDate));
  }

  Future getFilteredNotes(DateTime selectedDate) async {
    await getNotes();
    final filteredItemsBasedOnDate = <Note>[];

    state.items.forEach((element) {
      if (DateFormat('EEE, M/d/y').format(selectedDate) ==
          DateFormat('EEE, M/d/y')
              .format(DateTime.fromMillisecondsSinceEpoch(element.id!))) {
        filteredItemsBasedOnDate.add(element);
      }
    });

    emit(state.copyWith(filteredItemsBasedOnDate: filteredItemsBasedOnDate));
  }

  Future addOrUpdateNote(
      int? id, String content, int? color, EditMode editMode) async {
    final note = Note(id, content, color);

    if (EditMode.ADD == editMode)
      state.items.insert(0, note);
    else
      state.items[state.items.indexWhere((element) => element.id == id)] = note;

    emit(state);

    DatabaseHelper.insert(
        {'id': note.id, 'content': note.content, 'color': note.color});
  }

  Future deleteNote(int? id) {
    state.items.removeWhere((element) => element.id == id);
    return DatabaseHelper.delete(id);
  }
}

enum EditMode {
  ADD,
  UPDATE,
}
