import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes/features/notes/data/models/note_model.dart';

import '../../../../../core/theme/constants.dart';

part 'read_notes_state.dart';

class ReadNotesCubit extends Cubit<ReadNotesState> {
  ReadNotesCubit() : super(ReadNotesInitial());

  fetchAllNotes() {
    try {
      var noteBox = Hive.box<NoteModel>(kNotesBox);
      List<NoteModel> notes = noteBox.values.toList();
      emit(ReadNotesSuccess(notes: notes));
    } catch (e) {
      emit(ReadNotesFailure(errMessage: e.toString()));
    }
  }
}
