import 'package:flutter/material.dart';

import 'custom_search_icon.dart';

class CustomAppbarWidget extends StatelessWidget {
  const CustomAppbarWidget({
    super.key,
    required this.title,
    required this.icon,
    required this.onPressed,
  });
  final String title;
  final IconData icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 28,
            color: Colors.white,
          ),
        ),
        CustomSearchIcon(
          icon: icon,
          onPressed: onPressed,
        ),
      ],
    );
  }
}
