import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes/features/notes/data/models/note_model.dart';
import 'package:notes/features/notes/presentation/cubit/add_note_cubit/add_note_cubit.dart';
import 'package:notes/features/notes/presentation/widgets/colors_picker.dart';
import 'custom_button.dart';
import 'custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidateMode: _autovalidateMode,
      child: Column(
        children: [
          const SizedBox(height: 16.0),
          CustomTextField(
            title: 'title',
            onSaved: (value) => title = value,
          ),
          const SizedBox(height: 16.0),
          CustomTextField(
            title: 'content',
            maxLines: 5,
            onSaved: (value) => content = value,
          ),
          const ColorsPicker(),
          const SizedBox(height: 56.0),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButton(
                isLoading: state is AddNoteLoading,
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    NoteModel noteModel = NoteModel(
                      title: title!,
                      content: content!,
                      // date: DateTime.now().toString(),
                      date: DateFormat.yMd().format(
                        DateTime.now(),
                      ),

                      color: Colors.blue.value,
                    );
                    context.read<AddNoteCubit>().addNote(noteModel);
                  } else {
                    setState(() {
                      _autovalidateMode = AutovalidateMode.always;
                    });
                  }
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
