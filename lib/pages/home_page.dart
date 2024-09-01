import 'package:flutter/material.dart';

import '../widgets/notes_body_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: NotesBodyWidget(),
    );
  }
}
