import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main(){

  late FlutterDriver driver;

  setUpAll(() async {
    driver = await FlutterDriver.connect();
    final health = await driver.checkHealth();
    if ( health.status == HealthStatus.bad) {
      fail("Flutter driver 起動失敗");
    }
  });
  tearDownAll(() async {
  });

  final SerializableFinder key1Finder = find.text("1");

  test("数字をタップ", () async {
    await driver.tap(key1Finder);
  });
}