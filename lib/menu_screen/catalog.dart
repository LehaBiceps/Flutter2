import 'package:flutter/material.dart';
import 'package:project_two/widgets/main_screens/app_bar.dart';
import 'package:project_two/widgets/main_screens/card.dart';
import 'package:project_two/widgets/main_screens/middle_title.dart';
import 'package:project_two/widgets/main_screens/scroll.dart';

class Catalog extends StatefulWidget {
  const Catalog({super.key});

  @override
  _CatalogState createState() => _CatalogState();
}

class _CatalogState extends State<Catalog> {
  int _selectedIndex = -1;

  void _onCategorySelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: customAppBarMain(context),
      body: Column(
        children: [
          const SizedBox(height: 50),
          MiddleTitle(text: 'ХИТЫ ПРОДАЖ'),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(10, (index) => CardProduct()),
              ),
            ),
          ),
          const SizedBox(height: 20),
          MiddleTitle(text: 'КАТАЛОГ STIHL'),
          const SizedBox(height: 20),
          Scroll(_onCategorySelected),
        ],
      ),
    );
  }
}