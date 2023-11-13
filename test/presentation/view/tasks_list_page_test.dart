import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tasks_riverpod/presentation/view/tasks_list_page.dart';

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

    // You can add more specific tests based on your requirements
  });

  // Add more test cases as needed
}
