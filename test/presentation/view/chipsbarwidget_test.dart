import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tasks_riverpod/presentation/view/widgets/chipsbar_widget.dart';

void main() {
  testWidgets('ChipsBarWidget should render correctly', (WidgetTester tester) async {
    // Build our widget and trigger a frame.
    await tester.pumpWidget(ProviderScope(
      child: MaterialApp(
        home: Scaffold(
          body: ChipsBarWidget(),
        ),
      ),
    ));

    // Verify if the chips are rendered
    expect(find.byType(InputChip), findsNWidgets(3));

    // Tap on the chips and check if the expected actions are triggered
    await tester.tap(find.text('All'));
    await tester.pump();

    // Add more specific tests based on your requirements
  });

  // Add more test cases as needed
}