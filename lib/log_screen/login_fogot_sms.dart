import 'package:flutter/material.dart';
import 'package:project_two/widgets/button_log_screen.dart';
import 'package:project_two/widgets/logo.dart';
import 'package:project_two/widgets/text_button.dart';
import 'package:project_two/widgets/text_field.dart';
import 'package:project_two/widgets/app_bar.dart';

class FogotSms extends StatelessWidget {
  const FogotSms({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: customAppBar(context),
      body: Column(
        children: [
          const SizedBox(height: 70),
          logo(),
          const SizedBox(height: 70),
          const Text('Вход в приложение Магазин Строитель',
            style: TextStyle(
                color: Color(0xFFEE7100),
                fontSize: 15
            ),
          ),
          textField(text: 'Код из смс'),
          const SizedBox(height: 50),
          customButton(text: 'Продолжить', onPressed: (){}),
        ],
      ),
    );
  }
}


