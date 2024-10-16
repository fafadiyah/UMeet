import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:umeet/main.dart'; // Sesuaikan dengan jalur ke main.dart Anda

void main() {
  testWidgets(' app loads and displays initial page', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(UMeetApp());

    // Verify that the app displays the home page.
    expect(find.text('umeet'), findsOneWidget);

    // Verify the initial tab is 'Berita'.
    expect(find.text('Berita'), findsOneWidget);
  });
}
