import 'package:flutter/material.dart';

import 'custom_appbar_widget.dart';
import 'note_item_widget.dart';
import 'notes_list_view.dart';

class NotesBodyWidget extends StatelessWidget {
  const NotesBodyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Column(
          children: [
            CustomAppbarWidget(),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: NotesListView(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
