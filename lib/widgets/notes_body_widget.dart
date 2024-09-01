import 'package:flutter/material.dart';

import 'custom_appbar_widget.dart';
import 'note_item_widget.dart';

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
            NoteItemWidget(),
          ],
        ),
      ),
    );
  }
}
