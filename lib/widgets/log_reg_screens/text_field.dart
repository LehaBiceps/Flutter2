import 'dart:async';
import 'package:flutter/material.dart';

Widget textField({
  required String text,
  String? optionalText,
  Color? optionalColor,
  VoidCallback? onPressed,
  bool showTimer = false,
  bool obscureText = false,
}) {
  int remainingTime = 30;
  bool isTimerActive = false;
  late Timer timer;
  ValueNotifier<bool> obscureNotifier = ValueNotifier<bool>(obscureText);

  void startTimer(Function updateState) {
    isTimerActive = true;
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      updateState(() {
        if (remainingTime > 0) {
          remainingTime--;
        } else {
          timer.cancel();
          isTimerActive = false;
        }
      });
    });
  }

  return StatefulBuilder(
    builder: (context, setState) {
      return Padding(
        padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ValueListenableBuilder<bool>(
              valueListenable: obscureNotifier,
              builder: (context, isObscured, child) {
                return TextField(
                  obscureText: isObscured,
                  decoration: InputDecoration(
                    hintText: text,
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFEE7100)),
                    ),
                    suffixIcon: obscureText
                        ? IconButton(
                      icon: Icon(
                        isObscured ? Icons.visibility_off : Icons.visibility,
                        color: Colors.grey,
                      ),
                      onPressed: () {
                        obscureNotifier.value = !obscureNotifier.value;
                      },
                    )
                        : null,
                  ),
                );
              },
            ),
            if (optionalText != null && !isTimerActive)
              Padding(
                padding: const EdgeInsets.only(top: 14),
                child: TextButton(
                  onPressed: () {
                    if (onPressed != null) {
                      onPressed();
                    }
                    if (showTimer) {
                      startTimer(setState);
                    }
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    minimumSize: const Size(0, 0),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  child: Text(
                    optionalText,
                    style: TextStyle(
                      color: optionalColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            if (isTimerActive)
              Padding(
                padding: const EdgeInsets.only(top: 14),
                child: Text(
                  'Отправить ещё раз через $remainingTime секунд',
                  style: const TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
          ],
        ),
      );
    },
  );
}