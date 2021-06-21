import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mockito/mockito.dart';
import 'package:tdd_sample/logic.dart';
import 'package:tdd_sample/models/calc_controller.dart';

void main() {

  test("riverpod test", (){
    final target = CalcController();
    expect(target.debugState.text, "0");
    target.input("2");
    target.input("3");
    expect(target.debugState.text, "23");

  });

  test("riverpod test2", (){
    final target = CalcController();
    expect(target.debugState.text, "0");
    target.input("2");
    target.input("3");
    expect(target.debugState.text, "23");

  });

}
