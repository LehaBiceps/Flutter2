import 'package:flutter/material.dart';
import 'package:project_two/widgets/log_reg_screens/button_log_screen.dart';
import 'package:project_two/widgets/log_reg_screens/logo.dart';
import 'package:project_two/widgets/log_reg_screens/text_button.dart';
import 'package:project_two/widgets/log_reg_screens/text_field.dart';
import 'package:project_two/widgets/log_reg_screens/app_bar.dart';
import 'package:project_two/widgets/log_reg_screens/app_bar.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, text: 'Регистрация'),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          textField(text: 'Имя'),
          const SizedBox(height: 20),
          textField(text: 'Фамилия'),
          const SizedBox(height: 20),
          textField(text: 'Придумайте логин'),
          const SizedBox(height: 20),
          textField(text: 'Придумайте пароль', obscureText: true),
          const SizedBox(height: 20),
          textField(text: 'Номер мобильного телефона'),
          const SizedBox(height: 40),
          customButton(text: 'Регистрация', onPressed: (){Navigator.pushNamed(context, '/reg_sms');})
        ],
      ),
    );
  }
}
