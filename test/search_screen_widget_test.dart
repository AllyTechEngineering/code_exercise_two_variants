import 'package:code_exercise_two_variants/screens/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('TextField has Search...', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: SearchScreen()));

    final textField = find.byType(TextField);
    expect(textField, findsOneWidget);
  });
}
