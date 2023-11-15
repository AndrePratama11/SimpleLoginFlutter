import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:absensi/pages/login.dart';

void main() {
  testWidgets('Widget harus menavigasi ke halaman login Halaman login harus memiliki kolom input nama pengguna', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: LoginPage(),
    ));

    // Verify that the username input field is present.
    expect(find.byType(TextField), findsOneWidget);
  });

  testWidgets('Halaman login harus memiliki kolom input kata sandi', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: LoginPage(),
    ));

    // Verify that the password input field is present.
    expect(find.byType(TextField), findsNWidgets(2)); // There are two text fields, one for username and one for password.
  });

  testWidgets('Halaman login harus memiliki tombol login', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: LoginPage(),
    ));

    // Verify that the login button is present.
    expect(find.byType(ElevatedButton), findsOneWidget);
  });

  // Add more tests based on your UI and logic.
}
