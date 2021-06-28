import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tdd_sample/models/calc_controller.dart';
import 'package:tdd_sample/style.dart';
import 'package:tdd_sample/views/button.dart';

class MyHomePage extends HookWidget {

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
                Expanded(child: Button(text: "C", colorButton: colorFunc, colorText: colorMain)),
                Expanded(child: Button(text: "+/-", colorButton: colorFunc, colorText: colorMain)),
                Expanded(child: Button(text: "%", colorButton: colorFunc, colorText: colorMain)),
                Expanded(child: Button(text: "/", colorButton: colorCalc, colorText: colorText)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(child: Button(text: "7", colorButton: colorNum, colorText: colorText)),
                Expanded(child: Button(text: "8", colorButton: colorNum, colorText: colorText)),
                Expanded(child: Button(text: "9", colorButton: colorNum, colorText: colorText)),
                Expanded(child: Button(text: "x", colorButton: colorCalc, colorText: colorText)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(child: Button(text: "4", colorButton: colorNum, colorText: colorText)),
                Expanded(child: Button(text: "5", colorButton: colorNum, colorText: colorText)),
                Expanded(child: Button(text: "6", colorButton: colorNum, colorText: colorText)),
                Expanded(child: Button(text: "-", colorButton: colorCalc, colorText: colorText)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(child: Button(text: "1", colorButton: colorNum, colorText: colorText)),
                Expanded(child: Button(text: "2", colorButton: colorNum, colorText: colorText)),
                Expanded(child: Button(text: "3", colorButton: colorNum, colorText: colorText)),
                Expanded(child: Button(text: "+", colorButton: colorCalc, colorText: colorText)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Button(text: "0", colorButton: colorNum, colorText: colorText),
                Expanded(child: Button(text: ".", colorButton: colorNum, colorText: colorText)),
                Expanded(child: Button(text: "=", colorButton: colorCalc, colorText: colorText)),
              ],
            ),
          ],
        ),
      ),
    );
  } // end of state class

}