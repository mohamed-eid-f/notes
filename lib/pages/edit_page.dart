import 'package:flutter/material.dart';
import 'package:notes/widgets/custom_appbar_widget.dart';

import '../widgets/custom_text_field.dart';

class EditPage extends StatelessWidget {
  const EditPage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: EditPageBodyWidget(),
    );
  }
}

class EditPageBodyWidget extends StatelessWidget {
  const EditPageBodyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Column(
          children: [
            CustomAppbarWidget(
              title: "Edit Note",
              icon: Icons.check,
            ),
            SizedBox(height: 16),
            CustomTextField(
              title: "title",
            ),
            SizedBox(height: 16),
            CustomTextField(
              title: "content",
              maxLines: 5,
            ),
          ],
        ),
      ),
    );
  }
}
