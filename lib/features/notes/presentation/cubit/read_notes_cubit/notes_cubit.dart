import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes/features/notes/data/models/note_model.dart';

import '../../../../../core/theme/constants.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List<NoteModel>? notes;
  fetchAllNotes() {
    var noteBox = Hive.box<NoteModel>(kNotesBox);
    notes = noteBox.values.toList();
    emit(NotesSuccess());
  }
}
