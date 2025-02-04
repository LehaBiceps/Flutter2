import 'package:flutter/material.dart';

AppBar customAppBarMain(context) {
  return AppBar(
    backgroundColor: Colors.white,
    leading: IconButton(
      onPressed: () {},
      icon: const Icon(Icons.fire_truck, color: Color(0xFFEE7100)),
    ),
    title: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
          onTap: () {},
          child: const Text(
            'Доставка курьером',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w400,
              color: Color(0xFFEE7100),
            ),
          ),
        ),
        const Text(
          'Тут будет улица',
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    ),
    centerTitle: true,
  );
}