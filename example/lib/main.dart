import 'package:flutter/material.dart';
import 'package:prism_gradients_toolkit/prism_gradients_toolkit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prism Gradients Toolkit Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Prism Gradients Demo'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // Header Text
            const GradientShaderText(
              text: '🌈 Welcome to Prism Gradients!',
              fontSize: 24,
              fontWeight: FontWeight.bold,
              colors: [
                Colors.purple,
                Colors.blue,
                Colors.pink,
                Colors.orange,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              duration: Duration(seconds: 3),
            ),

            const SizedBox(height: 30),

            // Gradient Avatar Section
            const Text(
              'Animated Gradient Avatar',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 15),
            const AnimatedGradientAvatar(
              radius: 60,
              beginColor1: Colors.deepPurple,
              endColor1: Colors.blue,
              beginColor2: Colors.pink,
              endColor2: Colors.orange,
              duration: Duration(seconds: 4),
              child: Icon(
                Icons.person,
                size: 60,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 30),

            // Gradient TextField Section
            const Text(
              'Animated Gradient TextField',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 15),
            AnimatedGradientTextField(
              beginColor: Colors.purple,
              endColor: Colors.cyan,
              hintText: 'Type something magical...',
            ),

            const SizedBox(height: 30),

            // Gradient Container Section
            const Text(
              'Animated Gradient Container',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 15),
            AnimatedGradientContainer(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              startColors: const [Colors.purple, Colors.blue],
              endColors: const [Colors.pink, Colors.orange],
              duration: const Duration(seconds: 5),
              borderRadius: 20.0,
              child: const Padding(
                padding: EdgeInsets.all(30.0),
                child: Column(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.white,
                      size: 40,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Beautiful Gradient Container!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 30),

            // Gradient Buttons Section
            const Text(
              'Animated Gradient Buttons',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 15),

            // Button 1
            AnimatedGradientButton(
              text: '🚀 Launch App',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('🚀 App Launched!'),
                    duration: Duration(seconds: 2),
                  ),
                );
              },
              width: 200,
              height: 50,
              color1Begin: Colors.deepOrange,
              color1End: Colors.purple,
              color2Begin: Colors.teal,
              color2End: Colors.cyanAccent,
            ),

            const SizedBox(height: 15),

            // Button 2
            AnimatedGradientButton(
              text: '💎 Premium Feature',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('💎 Premium activated!'),
                    duration: Duration(seconds: 2),
                  ),
                );
              },
              width: 220,
              height: 55,
              color1Begin: Colors.indigo,
              color1End: Colors.pink,
              color2Begin: Colors.amber,
              color2End: Colors.red,
            ),

            const SizedBox(height: 30),

            // More Gradient Text Examples
            const Text(
              'More Gradient Text Styles',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 15),

            const GradientShaderText(
              text: 'Stunning!',
              fontSize: 32,
              fontWeight: FontWeight.w900,
              colors: [Colors.red, Colors.orange, Colors.yellow],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              duration: Duration(seconds: 2),
            ),

            const SizedBox(height: 10),

            const GradientShaderText(
              text: 'Amazing Design',
              fontSize: 20,
              fontWeight: FontWeight.w500,
              colors: [Colors.green, Colors.blue, Colors.purple],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              duration: Duration(seconds: 4),
            ),

            const SizedBox(height: 30),

            // Footer
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Column(
                children: [
                  Text(
                    '✨ All widgets are fully customizable!',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Adjust colors, durations, sizes, and more to match your app\'s design.',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }
}
