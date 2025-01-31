import 'package:flutter/material.dart';

Widget textField(
    {
      required String text,
      String? optionalText,
      VoidCallback? onPressed,
    })

{
  return Padding(
    padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          decoration: InputDecoration(
            hintText: text,
            hintStyle: const TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w400,
            ),
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFEE7100)),
            ),
          ),
        ),
        if (optionalText != null)
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: TextButton(
              onPressed: onPressed,
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
                minimumSize: const Size(0, 0),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              child: Text(
                optionalText,
                style: const TextStyle(
                    color: Color(0xFFEE7100),
                    fontSize: 15,
                  fontWeight: FontWeight.w400
                ),
              ),
            ),
          ),
      ],
    ),
  );
}