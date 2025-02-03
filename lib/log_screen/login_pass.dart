import 'package:flutter/material.dart';
import 'package:project_two/widgets/log_reg_screens/button_log_screen.dart';
import 'package:project_two/widgets/log_reg_screens/logo.dart';
import 'package:project_two/widgets/log_reg_screens/text_button.dart';
import 'package:project_two/widgets/log_reg_screens/text_field.dart';
import 'package:project_two/widgets/log_reg_screens/app_bar.dart';
import 'package:project_two/widgets/log_reg_screens/app_bar.dart';

class LoginPass extends StatelessWidget {
  const LoginPass({super.key});

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
          textField(text: 'Введите пароль', optionalText: 'Напомнить пароль', optionalColor: const Color(0xFFEE7100), onPressed: (){Navigator.pushNamed(context, '/fogot_phone');}),
          const SizedBox(height: 40),
          customButton(text: 'Продолжить', onPressed: (){Navigator.pushNamed(context, '/catalog');})
        ],
      ),
    );
  }
}
