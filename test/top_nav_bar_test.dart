import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tv_app/screens/home/TopNavBar.dart';

void main() {
  testWidgets('TopNavBar displays correctly', (WidgetTester tester) async {
    // Build the TopNavBar widget
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(60.0),
            child: TopNavBar(),
          ),
        ),
      ),
    );

    // Verify if IconButton widgets are found
    expect(find.byIcon(Icons.search), findsOneWidget);
    expect(find.byIcon(Icons.notifications), findsOneWidget);
    expect(find.byIcon(Icons.settings), findsOneWidget);
    expect(find.byIcon(Icons.person), findsOneWidget);

    // Verify if Text widgets with correct text are found
    expect(find.text('Main'), findsOneWidget);
    expect(find.text('Shop'), findsOneWidget);
    expect(find.text('Apps'), findsOneWidget);

    // Verify if TimeDisplay widget is found
    expect(find.byType(TimeDisplay), findsOneWidget);
  });
}
