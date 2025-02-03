import 'package:flutter/material.dart';
import 'package:project_two/widgets/log_reg_screens/button_log_screen.dart';
import 'package:project_two/widgets/log_reg_screens/logo.dart';
import 'package:project_two/widgets/log_reg_screens/text_button.dart';
import 'package:project_two/widgets/log_reg_screens/text_field.dart';
import 'package:project_two/widgets/log_reg_screens/app_bar.dart';

class FogotPhone extends StatelessWidget {
  const FogotPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: customAppBar(context, text: '       Вход'),
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
          textField(text: 'Номер мобильного телефона'),
          const SizedBox(height: 50),
          customButton(text: 'Продолжить', onPressed: (){Navigator.pushNamed(context, '/fogot_sms');}),
        ],
      ),
    );
  }
}


