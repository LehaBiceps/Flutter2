import 'package:flutter/material.dart';
import 'package:project_two/log_screen/login_phone.dart';
import 'package:project_two/log_screen/login_pass.dart';
import 'package:project_two/log_screen/login_fogot_phone.dart';
import 'package:project_two/log_screen/login_fogot_sms.dart';

void main()
{
  runApp(MaterialApp(
      initialRoute: '/',
      routes:
      {
        '/': (context) => const LoginPhone(),
        '/pass': (context) => const LoginPass(),
        '/fogot_phone': (context) => const FogotPhone(),
        '/fogot_sms': (context) => const FogotSms(),
      }
      )
  );
}
