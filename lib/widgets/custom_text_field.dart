import 'package:flutter/material.dart';

import '../core/theme/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        labelText: "Title",
        labelStyle: const TextStyle(color: kPrimaryColor),
        border: _buildBorder(),
        enabledBorder: _buildBorder(),
        focusedBorder: _buildBorder(kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder _buildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(8.0)),
      borderSide: BorderSide(
        color: color ?? Colors.white,
        width: 1.0,
      ),
    );
  }
}
