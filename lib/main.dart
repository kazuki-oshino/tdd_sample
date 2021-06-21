import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tdd_sample/logic.dart';
import 'package:tdd_sample/models/calc_controller.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends HookWidget {
  // 色の定義
  static const Color colorMain = Colors.black;
  static const Color colorNum = Colors.white10;
  static const Color colorFunc = Colors.white54;
  static const Color colorCalc = Colors.orange;
  static const Color colorText = Colors.white;


  static const Map<String, IconData> _mapIcon = {
    "+/-": CupertinoIcons.plus_slash_minus,
    "%": CupertinoIcons.percent,
    "/": CupertinoIcons.divide,
    "x": CupertinoIcons.multiply,
    "-": CupertinoIcons.minus,
    "+": CupertinoIcons.plus,
    "=": CupertinoIcons.equal,
  };

  Widget button(String text, Color colorButton, Color colorText) {
    final controller = useProvider(calcProvider.notifier);
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: ElevatedButton(
          child: Padding(
            padding: text == "0"
                ? const EdgeInsets.only(
                left: 20, top: 20, right: 120, bottom: 20)
                : text.length == 1
                ? const EdgeInsets.all(22)
                : const EdgeInsets.symmetric(horizontal: 15, vertical: 22),
            child: _mapIcon.containsKey(text)
                ? Icon(
              _mapIcon[text],
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
        ));
  }

  Widget build(BuildContext context) {
    final text = useProvider(calcProvider.select((value) => value.text));
    return Scaffold(
      backgroundColor: colorMain,
      body: Container(
        margin: const EdgeInsets.only(bottom: 20,),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    text,
                    style: const TextStyle(
                      color: colorText,
                      fontSize: 60,
                    ),
                    textAlign: TextAlign.right,
                    maxLines: 1,
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(child: button("C", colorFunc, colorMain)),
                Expanded(child: button("+/-", colorFunc, colorMain)),
                Expanded(child: button("%", colorFunc, colorMain)),
                Expanded(child: button("/", colorCalc, colorText)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(child: button("7", colorNum, colorText)),
                Expanded(child: button("8", colorNum, colorText)),
                Expanded(child: button("9", colorNum, colorText)),
                Expanded(child: button("x", colorCalc, colorText)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(child: button("4", colorNum, colorText)),
                Expanded(child: button("5", colorNum, colorText)),
                Expanded(child: button("6", colorNum, colorText)),
                Expanded(child: button("-", colorCalc, colorText)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(child: button("1", colorNum, colorText)),
                Expanded(child: button("2", colorNum, colorText)),
                Expanded(child: button("3", colorNum, colorText)),
                Expanded(child: button("+", colorCalc, colorText)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                button("0", colorNum, colorText),
                Expanded(child: button(".", colorNum, colorText)),
                Expanded(child: button("=", colorCalc, colorText)),
              ],
            ),
          ],
        ),
      ),
    );
  } // end of state class

}