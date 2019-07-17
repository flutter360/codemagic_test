import 'package:flutter_test/flutter_test.dart';

import 'package:flutter/material.dart';
import 'package:codemagic_test/my_widget.dart';

void main() {
  testWidgets('Add and remove a todo', (WidgetTester tester) async {
    // Build the widget
    await tester.pumpWidget(TodoList());

    // Enter 'hi' into the TextField.
    await tester.enterText(find.byType(TextField), 'hi');

    await tester.tap(find.byType(FloatingActionButton));

    await tester.pump();

    expect(find.text('hi'), findsOneWidget);

    await tester.drag(find.byType(Dismissible), Offset(500.0, 0.0));

    await tester.pumpAndSettle();

    expect(find.text('hi'), findsNothing);
  });
}
