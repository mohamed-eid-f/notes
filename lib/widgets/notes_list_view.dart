import 'package:flutter/material.dart';
import 'package:notes/pages/edit_page.dart';
import 'package:notes/widgets/note_item_widget.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      itemBuilder: (context, index) => InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const EditPage()),
          );
        },
        child: const NoteItemWidget(),
      ),
    );
  }
}
