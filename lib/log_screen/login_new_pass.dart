import 'package:flutter/material.dart';
import 'package:project_two/widgets/log_reg_screens/button_log_screen.dart';
import 'package:project_two/widgets/log_reg_screens/logo.dart';
import 'package:project_two/widgets/log_reg_screens/text_button.dart';
import 'package:project_two/widgets/log_reg_screens/text_field.dart';
import 'package:project_two/widgets/log_reg_screens/app_bar.dart';
import 'package:project_two/widgets/log_reg_screens/app_bar.dart';

class NewPass extends StatelessWidget {
  const NewPass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, text: '       Вход'),
      backgroundColor: Colors.white,
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
          textField(text: 'Придумайте новый пароль', obscureText: true),
          textField(text: 'Подтвердите пароль', obscureText: true),
          const SizedBox(height: 40),
          customButton(text: 'Продолжить', onPressed: (){})
        ],
      ),
    );
  }
}
