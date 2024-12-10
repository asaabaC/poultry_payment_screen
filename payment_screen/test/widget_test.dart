// Keep this import since you're using material widgets
import 'package:flutter_test/flutter_test.dart';

import 'package:payment_screen/main.dart'; // Correct import for your app

void main() {
  testWidgets('Order Confirmation Screen Test', (WidgetTester tester) async {
    // Build the app and trigger a frame.
    await tester.pumpWidget(const PoultryApp());

    // Verify the presence of the expected texts.
    expect(find.text('Order Confirmed!'), findsOneWidget);
    expect(
      find.text('Thank you for your payment. Your order has been successfully placed.'),
      findsOneWidget,
    );

    // Verify the presence of the "Back to Home" button.
    expect(find.text('Back to Home'), findsOneWidget);

    // Simulate a tap on the "Back to Home" button and trigger a frame.
    await tester.tap(find.text('Back to Home'));
    await tester.pump();
  });
}
