import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:audiobook_store_frontend/main.dart';

void main() {
  testWidgets('App launches and shows bottom navigation', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();

    expect(find.text('Store'), findsWidgets);
    expect(find.byType(NavigationBar), findsOneWidget);
    expect(find.byIcon(Icons.storefront_outlined), findsOneWidget);
  });
}
