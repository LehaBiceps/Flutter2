import 'package:flutter/material.dart';

AppBar customAppBar(context, {required String text})
{
  return AppBar(
    backgroundColor: Colors.white,
    title: Padding(padding: const EdgeInsets.only(left: 42),
      child: Text(text,
        style: const TextStyle(
            fontSize: 32
        ),
      ),
    ),
    leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: const Icon(Icons.arrow_back)),
  );
}

