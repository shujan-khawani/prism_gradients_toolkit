import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

// Import your widgets here
import 'package:prism_gradients_toolkit/prism_gradients_toolkit.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('AnimatedGradientContainer', () {
    testWidgets('renders and animates gradient correctly', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: AnimatedGradientContainer(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            startColors: [Colors.red, Colors.blue],
            endColors: [Colors.green, Colors.yellow],
            child: Text('Gradient Container'),
          ),
        ),
      );
      expect(find.text('Gradient Container'), findsOneWidget);
    });
  });

  group('GradientShaderText', () {
    testWidgets('renders animated gradient text', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: GradientShaderText(
              text: 'Hello Gradient',
              fontSize: 24,
              fontWeight: FontWeight.bold,
              colors: [Colors.purple, Colors.orange],
            ),
          ),
        ),
      );
      expect(find.text('Hello Gradient'), findsOneWidget);
    });
  });

  group('AnimatedGradientTextField', () {
    testWidgets('renders gradient animated border', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: AnimatedGradientTextField(
              beginColor: Colors.pink,
              endColor: Colors.teal,
              hintText: 'Type here...',
            ),
          ),
        ),
      );
      expect(find.byType(TextField), findsOneWidget);
      expect(find.text('Type here...'), findsOneWidget);
    });
  });

  group('AnimatedGradientAvatar', () {
    testWidgets('renders animated gradient avatar', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: Center(
              child: AnimatedGradientAvatar(
                radius: 30,
                beginColor1: Colors.red,
                endColor1: Colors.blue,
                beginColor2: Colors.green,
                endColor2: Colors.yellow,
                child: Icon(Icons.person),
              ),
            ),
          ),
        ),
      );
      expect(find.byIcon(Icons.person), findsOneWidget);
    });
  });

  group('AnimatedGradientButton', () {
    testWidgets('responds to tap', (tester) async {
      bool tapped = false;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: AnimatedGradientButton(
              text: 'Click Me',
              onPressed: () {
                tapped = true;
              },
              color1Begin: Colors.red,
              color1End: Colors.blue,
              color2Begin: Colors.green,
              color2End: Colors.purple,
            ),
          ),
        ),
      );

      expect(find.text('Click Me'), findsOneWidget);
      await tester.tap(find.text('Click Me'));
      await tester.pump();
      expect(tapped, isTrue);
    });
  });
}
