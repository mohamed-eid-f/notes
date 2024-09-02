import 'package:flutter/material.dart';

import 'custom_button.dart';
import 'custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 32.0, horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextField(title: 'title'),
            SizedBox(height: 16.0),
            CustomTextField(
              title: 'content',
              maxLines: 5,
            ),
            SizedBox(height: 56.0),
            CustomButton(),
          ],
        ),
      ),
    );
  }
}
