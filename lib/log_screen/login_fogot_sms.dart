import 'package:flutter/material.dart';
import 'package:project_two/widgets/button_log_screen.dart';
import 'package:project_two/widgets/logo.dart';
import 'package:project_two/widgets/text_button.dart';
import 'package:project_two/widgets/text_field.dart';
import 'package:project_two/widgets/app_bar.dart';

class FogotSms extends StatefulWidget {
  const FogotSms({super.key});

  @override
  State<FogotSms> createState() => _FogotSmsState();
}

class _FogotSmsState extends State<FogotSms> {
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
          textField(text: 'Код из смс', showTimer: true, optionalText: 'Отправить ещё раз', onPressed: (){}),
          const SizedBox(height: 10),
          textButton(onPressed: (){Navigator.pushNamed(context, '/fogot_phone');}, text: 'Неверный номер', alignment: Alignment.topLeft),
          const SizedBox(height: 10),
          customButton(text: 'Продолжить', onPressed: (){}),
        ],
      ),
    );
  }
}


