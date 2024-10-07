import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:camera/camera.dart';
import 'package:tesserect_ocr/main.dart';
import 'package:mocktail/mocktail.dart';

class MockCameraDescription extends Mock implements CameraDescription {}

void main() {
  late List<CameraDescription> mockCameras;

  setUp(() {
    mockCameras = [MockCameraDescription()];
  });

  testWidgets('Camera OCR app smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp(cameras: mockCameras));

    // Verify that the app title is displayed
    expect(find.text('Camera OCR Demo'), findsOneWidget);

    // Verify that the camera preview is displayed
    expect(find.byType(CameraPreview), findsOneWidget);

    // Verify that the floating action button is displayed
    expect(find.byType(FloatingActionButton), findsOneWidget);

    // Tap the camera button and trigger a frame.
    await tester.tap(find.byType(FloatingActionButton));
    await tester.pump();

    // Verify that the "Processing image..." text is displayed
    expect(find.text('Processing image...'), findsOneWidget);

    // You can add more specific tests here based on your app's functionality
  });
}

// // This is a basic Flutter widget test.
// //
// // To perform an interaction with a widget in your test, use the WidgetTester
// // utility in the flutter_test package. For example, you can send tap and scroll
// // gestures. You can also use WidgetTester to find child widgets in the widget
// // tree, read text, and verify that the values of widget properties are correct.
//
// import 'package:flutter/material.dart';
// import 'package:flutter_test/flutter_test.dart';
//
// import 'package:tesserect_ocr/main.dart';
//
// void main() {
//   testWidgets('Counter increments smoke test', (WidgetTester tester) async {
//     // Build our app and trigger a frame.
//     await tester.pumpWidget(const MyApp());
//
//     // Verify that our counter starts at 0.
//     expect(find.text('0'), findsOneWidget);
//     expect(find.text('1'), findsNothing);
//
//     // Tap the '+' icon and trigger a frame.
//     await tester.tap(find.byIcon(Icons.add));
//     await tester.pump();
//
//     // Verify that our counter has incremented.
//     expect(find.text('0'), findsNothing);
//     expect(find.text('1'), findsOneWidget);
//   });
// }
