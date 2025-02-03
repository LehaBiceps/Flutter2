import 'package:flutter/material.dart';

Widget textButton({
  required VoidCallback onPressed,
  required String text,
  required Alignment alignment,
}) {
  return Align(
    alignment: alignment,
    child: TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: Color(0xFFEE7100),
        ),
      ),
    ),
  );
}