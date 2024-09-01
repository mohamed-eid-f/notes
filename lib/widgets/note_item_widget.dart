import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItemWidget extends StatelessWidget {
  const NoteItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.orange.shade100,
        borderRadius: const BorderRadius.all(Radius.circular(16)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: const Text(
              "Flutter tips",
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
              ),
            ),
            subtitle: const Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Text(
                "Build your career in Flutter",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18,
                ),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.trash,
                color: Colors.black,
              ),
            ),
          ),
          const Text(
            "May 10, 2022",
            style: TextStyle(color: Colors.black54, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
