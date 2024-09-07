import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/features/notes/presentation/cubit/read_notes_cubit/notes_cubit.dart';
import 'package:notes/features/notes/presentation/widgets/custom_appbar_widget.dart';

import '../../data/models/note_model.dart';
import '../widgets/custom_text_field.dart';

class EditPage extends StatelessWidget {
  const EditPage({super.key, required this.note});
  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditPageBodyWidget(note: note),
    );
  }
}

class EditPageBodyWidget extends StatefulWidget {
  const EditPageBodyWidget({
    super.key,
    required this.note,
  });
  final NoteModel note;

  @override
  State<EditPageBodyWidget> createState() => _EditPageBodyWidgetState();
}

class _EditPageBodyWidgetState extends State<EditPageBodyWidget> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Column(
          children: [
            CustomAppbarWidget(
              title: "Edit Note",
              icon: Icons.check,
              onPressed: () {
                widget.note.title = title!;
                widget.note.content = content!;
                widget.note.save();
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                Navigator.pop(context);
              },
            ),
            const SizedBox(height: 16),
            CustomTextField(
              onChanged: (value) {
                title = value;
              },
              title: widget.note.title,
            ),
            const SizedBox(height: 16),
            CustomTextField(
              onChanged: (value) {
                content = value;
              },
              title: widget.note.content,
              maxLines: 5,
            ),
          ],
        ),
      ),
    );
  }
}
