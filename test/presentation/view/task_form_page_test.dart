import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tasks_riverpod/presentation/view/pages/task_form_page.dart';


// failed test
void main() {
  testWidgets('TaskFormPage should render correctly', (WidgetTester tester) async {
    // Build our widget and trigger a frame.
    await tester.pumpWidget(ProviderScope(
      child: MaterialApp(
        home: TaskFormPage(null),
      ),
    ));

    // Verify if the title text is rendered
    expect(find.text('Save'), findsOneWidget);
    expect(find.text('Title'), findsOneWidget);
    expect(find.text('Description'), findsOneWidget);
    expect(find.text('DueDate'), findsOneWidget);

    // Tap on the save button and check if it triggers the action
    await tester.tap(find.text('Save'));
    await tester.pump();

    // Add more specific tests based on your requirements
  });

  // Add more test cases as needed
}
