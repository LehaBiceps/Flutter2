import 'package:flutter/material.dart';
import 'package:project_two/widgets/log_reg_screens/button_log_screen.dart';
import 'package:project_two/widgets/log_reg_screens/logo.dart';
import 'package:project_two/widgets/log_reg_screens/text_button.dart';
import 'package:project_two/widgets/log_reg_screens/text_field.dart';
import 'package:project_two/widgets/log_reg_screens/app_bar.dart';
import 'package:project_two/widgets/log_reg_screens/app_bar.dart';

class RegSms extends StatelessWidget {
  const RegSms({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, text: 'Регистрация'),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(height: 70),
          logo(),
          const SizedBox(height: 20),
          textField(text: 'Код из смс', optionalText: 'Отправить ещё раз', optionalColor: Colors.grey, showTimer: true),
          const SizedBox(height: 20),
          textButton(onPressed: (){}, text: 'Неверный номер', alignment: Alignment.topLeft),
          const SizedBox(height: 20),
          customButton(text: 'Подтвердить', onPressed: (){})
        ],
      ),
    );
  }
}
