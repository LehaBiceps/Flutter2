import 'dart:async';
import 'package:flutter/material.dart';

Widget textField({
  required String text,
  String? optionalText,
  VoidCallback? onPressed,
  bool showTimer = false,
}) {
  int remainingTime = 30;
  bool isTimerActive = false;
  late Timer timer;

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
            TextField(
              decoration: InputDecoration(
                hintText: text,
                hintStyle: const TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                ),
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFEE7100)),
                ),
              ),
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
                    style: const TextStyle(
                      color: Colors.grey,
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