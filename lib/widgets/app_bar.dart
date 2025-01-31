import 'package:flutter/material.dart';

AppBar customAppBar(context)
{
  return AppBar(
    backgroundColor: Colors.white,
    title: const Padding(padding: const EdgeInsets.only(left: 97),
      child: Text('Вход',
        style: TextStyle(
            fontSize: 32
        ),
      ),
    ),
    leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: const Icon(Icons.arrow_back)),
  );
}