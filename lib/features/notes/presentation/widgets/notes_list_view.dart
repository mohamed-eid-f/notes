import 'package:flutter/material.dart';
import 'package:notes/features/notes/data/models/note_model.dart';
import 'package:notes/features/notes/presentation/pages/edit_page.dart';
import 'package:notes/features/notes/presentation/widgets/note_item_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/read_notes_cubit/read_notes_cubit.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReadNotesCubit, ReadNotesState>(
      builder: (context, state) {
        List<NoteModel> notes =
            BlocProvider.of<ReadNotesCubit>(context).notes ?? [];
        debugPrint('notes: ${notes.length} & notes: $notes');
        return ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          itemCount: state is ReadNotesSuccess ? notes.length : 0,
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const EditPage()),
              );
            },
            child: NoteItemWidget(note: notes[index]),
          ),
        );
      },
    );
  }
}
