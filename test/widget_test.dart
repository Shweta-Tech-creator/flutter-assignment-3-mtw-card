import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mtw_identity_card/main.dart';

void main() {
  testWidgets('MTW Identity Card full scroll and content verification test', (WidgetTester tester) async {
    // Set iPhone 17 portrait dimensions (393 x 852 logical pixels)
    tester.view.physicalSize = const Size(1179, 2556);
    tester.view.devicePixelRatio = 3.0;

    await tester.pumpWidget(const MTWIdentityApp());
    await tester.pumpAndSettle();

    // Verify Root Structure & Mandatory Widgets
    expect(find.byType(Scaffold), findsOneWidget);
    expect(find.byType(AppBar), findsOneWidget);
    expect(find.text('MTW 2026'), findsOneWidget);
    expect(find.byType(SingleChildScrollView), findsOneWidget);
    expect(find.byType(Container), findsWidgets);
    expect(find.byType(Column), findsWidgets);
    expect(find.byType(Row), findsWidgets);
    expect(find.byType(CircleAvatar), findsWidgets);
    expect(find.byType(Text), findsWidgets);
    expect(find.byType(Icon), findsWidgets);
    expect(find.byType(SizedBox), findsWidgets);
    expect(find.byType(Center), findsWidgets);

    // Verify Header Content
    expect(find.text('MUMBAI TECH WEEK'), findsOneWidget);

    // Verify Identity Card Content
    expect(find.text('SWETA KADAM'), findsOneWidget);
    expect(find.text('ITM Skills University'), findsOneWidget);
    expect(find.text('20 Years'), findsOneWidget);
    expect(find.text('MTW26GLCR47C6'), findsWidgets);
    expect(find.text('A+'), findsOneWidget);
    expect(find.text('Mumbai, India'), findsOneWidget);
    expect(find.text('sweta1@gmail.com'), findsOneWidget);

    // Verify Icons
    expect(find.byIcon(Icons.cake_outlined), findsOneWidget);
    expect(find.byIcon(Icons.badge_outlined), findsOneWidget);
    expect(find.byIcon(Icons.bloodtype_outlined), findsOneWidget);
    expect(find.byIcon(Icons.location_on_outlined), findsOneWidget);
    expect(find.byIcon(Icons.email_outlined), findsOneWidget);

    // Scroll to bottom
    final scrollable = find.byType(Scrollable);
    expect(scrollable, findsOneWidget);
    await tester.scrollUntilVisible(find.text('3-4 Sept, 2026'), 200, scrollable: scrollable);
    await tester.pumpAndSettle();

    // Verify Footer Content
    expect(find.text('3-4 Sept, 2026'), findsOneWidget);
    expect(find.byType(RichText), findsWidgets);

    // Reset view
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
  });
}
