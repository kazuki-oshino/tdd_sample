import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tdd_sample/models/calc_controller.dart';
import 'package:tdd_sample/style.dart';

class Button extends HookWidget {
  final String text;
  final Color colorButton;
  final Color colorText;

  const Button({
    Key? key,
    required this.text,
    required this.colorButton,
    required this.colorText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = useProvider(calcProvider.notifier);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: ElevatedButton(
        child: Padding(
          padding: text == "0"
              ? const EdgeInsets.only(left: 20, top: 20, right: 120, bottom: 20)
              : text.length == 1
                  ? const EdgeInsets.all(22)
                  : const EdgeInsets.symmetric(horizontal: 15, vertical: 22),
          child: mapIcon.containsKey(text)
              ? Icon(
                  mapIcon[text],
                  size: 30,
                )
              : Text(
                  text,
                  style: const TextStyle(fontSize: 30),
                ),
        ),
        onPressed: () {
          controller.input(text);
        },
        style: ElevatedButton.styleFrom(
          primary: colorButton,
          onPrimary: colorText,
          shape: text == "0" ? const StadiumBorder() : const CircleBorder(),
        ),
      ),
    );
  }
}
