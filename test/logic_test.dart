import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tdd_sample/models/calc_controller.dart';

void main() {
  late CalcController target;

  setUp(() {
    final container = ProviderContainer();
    target = container.read(calcProvider.notifier);
  });

  test("riverpod test", (){
    expect(target.debugState.text, "0");
    target.input("2");
    target.input("3");
    expect(target.debugState.text, "23");

  });
  test("riverpod test2", (){
    expect(target.debugState.text, "0");
    target.input("2");
    target.input("3");
    expect(target.debugState.text, "23");

  });
}
