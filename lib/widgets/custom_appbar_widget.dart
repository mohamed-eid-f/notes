import 'package:flutter/material.dart';

import 'custom_search_icon.dart';

class CustomAppbarWidget extends StatelessWidget {
  const CustomAppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Notes",
          style: TextStyle(
            fontSize: 28,
            color: Colors.white,
          ),
        ),
        CustomSearchIcon(),
      ],
    );
  }
}
