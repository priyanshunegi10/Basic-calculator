import 'package:flutter/cupertino.dart';
import 'package:flutter_project/app/app.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("Calculator View Tests", () {
    testWidgets("Calculator basic Test", (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());

      expect(find.byKey(const Key("Result")), findsOneWidget);
      expect(find.byKey(const Key("displayOne")), findsOneWidget);
      expect(find.byKey(const Key("displaytwo")), findsOneWidget);
      expect(find.byIcon(CupertinoIcons.add), findsOneWidget);
      expect(find.byIcon(CupertinoIcons.minus), findsOneWidget);
      expect(find.byIcon(CupertinoIcons.multiply), findsOneWidget);
      expect(find.byIcon(CupertinoIcons.divide), findsOneWidget);
    });

    testWidgets("Calculator operations Test", (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());

      await tester.enterText(find.byKey(const Key("displayOne")), "10");
      await tester.enterText(find.byKey(const Key("displaytwo")), "20");

      // Addition
      await tester.tap(find.byIcon(CupertinoIcons.add));
      await tester.pump();
      expect(find.text("30"), findsOneWidget);

      // Subtraction
      await tester.tap(find.byIcon(CupertinoIcons.minus));
      await tester.pump();
      expect(find.text("-10"), findsOneWidget);

      // Multiplication
      await tester.tap(find.byIcon(CupertinoIcons.multiply));
      await tester.pump();
      expect(find.text("200"), findsOneWidget);

      // Division
      await tester.tap(find.byIcon(CupertinoIcons.divide));
      await tester.pump();
      expect(find.text("0.5"), findsOneWidget);
    });
  });
}
