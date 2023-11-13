import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tasks_riverpod/presentation/view/task_form_page.dart';

void main() {
  testWidgets('TaskFormPage should render correctly', (WidgetTester tester) async {
    // Build our widget and trigger a frame.
    await tester.pumpWidget(MaterialApp(
      home: TaskFormPage(null), // You can pass a Task object if needed
    ));

    // Verify if the title text is rendered
    expect(find.text('Save'), findsOneWidget);
    expect(find.text('Title'), findsOneWidget);
    expect(find.text('Description'), findsOneWidget);
    expect(find.text('DueDate'), findsOneWidget);

    // You can add more specific tests based on your requirements
  });

  // Add more test cases as needed
}
