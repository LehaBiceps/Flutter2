import 'package:flutter/material.dart';
import 'package:project_two/widgets/button_log_screen.dart';
import 'package:project_two/widgets/logo.dart';
import 'package:project_two/widgets/text_button.dart';
import 'package:project_two/widgets/text_field.dart';

class LoginPhone extends StatelessWidget {
  const LoginPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          textField(text: 'Номер мобильного телефона'),
          const SizedBox(height: 50),
          customButton(text: '      Войти      ', onPressed: (){Navigator.pushNamed(context, '/pass');}),
          const SizedBox(height: 380),
          textButton(onPressed: ()
          {
          }, text: 'Зарегистрироваться', alignment: Alignment.center)
        ],
      ),
    );
  }
}


