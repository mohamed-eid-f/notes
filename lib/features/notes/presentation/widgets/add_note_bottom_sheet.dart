import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/features/notes/presentation/cubit/read_notes_cubit/notes_cubit.dart';
import '../cubit/add_note_cubit/add_note_cubit.dart';
import 'add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteSuccess) {
            BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            Navigator.pop(context);
          } else if (state is AddNoteFailure) {
            // print('Failed to add note');
          }
        },
        builder: (context, state) {
          // disable child when absorbing is true to prevent user input
          return AbsorbPointer(
            absorbing: state is AddNoteLoading,
            child: Padding(
              padding: EdgeInsets.only(
                right: 16,
                left: 16,
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: const SingleChildScrollView(
                child: AddNoteForm(),
              ),
            ),
          );
        },
      ),
    );
  }
}
