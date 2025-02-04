import 'package:flutter/material.dart';

Widget customButton(
    {
      required String text,
      required VoidCallback onPressed,
    })
{
  return ElevatedButton(onPressed: onPressed,
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0xFFEE7100),
      foregroundColor: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 150),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    child: Text(text,
      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
    ),
  );
}