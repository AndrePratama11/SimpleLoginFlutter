import 'package:absensi/pages/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:absensi/pages/homepage.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

void main() {
  testWidgets('Homepage harus memiliki FloatingActionButton', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: Homepage(),
    ));

    // Verify that the FloatingActionButton is present.
    expect(find.byType(FloatingActionButton), findsOneWidget);
  });

  testWidgets('Homepage harus memiliki bilah navigasi bawah', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: Homepage(),
    ));

    // Verify that the bottom navigation bar is present.
    expect(find.byType(GNav), findsOneWidget);
  });

  testWidgets('Homepage harus berpindah halaman pada item navigasi bawah, ketuk', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: Homepage(),
    ));

    // Verify that the initial page is displayed.
    expect(find.byType(Dashboard), findsOneWidget);

    // Tap on a different tab in the bottom navigation bar.
    await tester.tap(find.byIcon(Icons.leave_bags_at_home));

    // Trigger a frame.
    await tester.pump();

    // Verify that the new page is displayed.
    expect(find.byType(Dashboard), findsOneWidget);
  });
}
