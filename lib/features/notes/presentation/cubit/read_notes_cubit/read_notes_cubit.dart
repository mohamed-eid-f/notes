import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:notes/features/notes/data/models/note_model.dart';

part 'read_notes_state.dart';

class ReadNotesCubit extends Cubit<ReadNotesState> {
  ReadNotesCubit() : super(ReadNotesInitial());
}
