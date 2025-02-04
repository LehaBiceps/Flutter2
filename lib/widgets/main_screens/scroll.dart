import 'package:flutter/material.dart';

Widget Scroll(Function(int) onCategorySelected) {
  int _selectedIndex = -1;

  final List<String> categories = [
    'Бензопилы',
    'Электропилы',
    'Газонокосилки',
    'Мотокосы/электрокосы',
    'Рустам',
  ];

  return Padding(
    padding: const EdgeInsets.only(left: 20),
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(categories.length, (index) {
          return GestureDetector(
            onTap: () {
              onCategorySelected(index);
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 4,
                      offset: Offset(2, 2),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Text(
                      categories[index],
                      style: TextStyle(
                        fontSize: 16,
                        color: _selectedIndex == index
                            ? const Color(0xFFEE7100) : Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    if (_selectedIndex == index)
                      Container(
                        width: 30,
                        height: 2,
                        color: const Color(0xFFEE7100),
                      ),
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    ),
  );
}