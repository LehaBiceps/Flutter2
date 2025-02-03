import 'package:flutter/material.dart';
import 'package:project_two/widgets/main_screens/app_bar.dart';

class Catalog extends StatelessWidget {
  const Catalog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: customAppBarMain(context),
    );
  }
}
