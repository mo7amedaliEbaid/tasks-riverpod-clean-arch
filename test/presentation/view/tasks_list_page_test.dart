import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tasks_riverpod/presentation/view/pages/tasks_list_page.dart';

// failed test

void main() {
  testWidgets('TasksListPage should render correctly', (WidgetTester tester) async {
    // Build our widget and trigger a frame.
    await tester.pumpWidget(ProviderScope(
      child: MaterialApp(
        home: TasksListPage(),
      ),
    ));

    // Verify if the title text is rendered
    expect(find.text('Tasks List'), findsOneWidget);
    expect(find.byType(FloatingActionButton), findsOneWidget);

    // Tap on the floating action button and check if it navigates to TaskFormPage
    await tester.tap(find.byType(FloatingActionButton));
    await tester.pump();

    expect(find.text('Save'), findsOneWidget); // Assuming TaskFormPage has a Save button

    // Add more specific tests based on your requirements
  });

  // Add more test cases as needed
}



