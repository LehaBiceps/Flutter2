import 'package:flutter/material.dart';

Widget MiddleTitle(
    {
      required String text,
    })
{
  return Container(
    width: double.infinity,
    decoration: const BoxDecoration(
      color: Color(0xFFEE7100),
    ),
    padding: const EdgeInsets.symmetric(vertical: 10),
    child: Center(
      child: Text(text,
        style: const TextStyle(
          fontSize: 20,
          color: Colors.white,
        ),
      ),
    ),
  );
}