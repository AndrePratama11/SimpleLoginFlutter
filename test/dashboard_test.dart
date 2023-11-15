import 'package:absensi/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:absensi/pages/dashboard.dart'; 

void main() {
  group('Dashboard Widget Tests', () {
    testWidgets('Widget harus menampilkan email', (WidgetTester tester) async {
      // Build our widget and trigger a frame.
      await tester.pumpWidget(
        MaterialApp(
          home: Dashboard(),
        ),
      );

      // Verify that email is displayed.
      expect(find.text('email : '), findsOneWidget);

      // You can add more assertions based on your UI structure.
    });

    testWidgets('Widget harus menavigasi ke halaman login', (WidgetTester tester) async {
      // Build our widget and trigger a frame.
      await tester.pumpWidget(
        MaterialApp(
          home: Dashboard(),
        ),
      );

      // Tap the logout button.
      await tester.tap(find.byType(OutlinedButton));

      // Trigger a frame.
      await tester.pump();

      // Verify that the navigation occurred.
      expect(find.byType(LoginPage), findsOneWidget);
    });
  });
}
