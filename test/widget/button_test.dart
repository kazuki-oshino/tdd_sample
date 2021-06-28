import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tdd_sample/main.dart';
import 'package:tdd_sample/views/button.dart';

void main() {
  group("Button Normal Test", () {
    testWidgets("Button Test", (WidgetTester tester) async {
      await tester.pumpWidget(
        ProviderScope(
          child: MaterialApp(
            home: Button(
              text: "0",
              colorButton: Colors.white,
              colorText: Colors.black,
            ),
          ),
        ),
      );

      await tester.pump();
      expect(find.text("0"), findsOneWidget);
      expect(find.text("2"), findsNothing);
    });
  });

  group("Tap Button Test", () {
    testWidgets("Tap Button Test", (WidgetTester tester) async {

      await tester.pumpWidget(
        ProviderScope(
          child: MyApp(),
        ),
      );

      await tester.pumpAndSettle();
      expect(find.text("0"), findsNWidgets(2));

      await tester.tap(find.text("1"));
      await tester.pump();
      expect(find.text("0"), findsOneWidget);
      expect(find.text("1"), findsNWidgets(2));

      await tester.tap(find.text("2"));
      await tester.pump();
      expect(find.text("12"), findsOneWidget);

    });
  });
}
