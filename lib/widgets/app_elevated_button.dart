import 'package:flutter/material.dart';

class AppElevatedButton extends StatelessWidget {
  const AppElevatedButton({
    super.key,
    required this.title,
    this.onPressed,
  });

  final String title;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      // style: ElevatedButton.styleFrom(
      //   backgroundColor: Colors.transparent,
      //   foregroundColor: Colors.black,
      // ),
      child: Text(title),
    );
  }
}
