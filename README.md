# 🌈 Prism Gradients Toolkit

[![pub package](https://img.shields.io/pub/v/prism_gradients_toolkit.svg)](https://pub.dev/packages/prism_gradients_toolkit)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

A beautiful Flutter package that provides stunning, customizable gradient UI components with smooth animations. Transform your app's interface with vibrant gradient buttons, avatars, text fields, containers, and text widgets that bring your design to life!

## 📱 Screenshots

<div align="center">
  <img src="assets/Screenshot 1.png" alt="Prism Gradients Toolkit Demo 1" width="300"/>
  <img src="assets/Screenshot 2.png" alt="Prism Gradients Toolkit Demo 2" width="300"/>
</div>

*Beautiful gradient components in action - see how they transform your app's interface!*

## ✨ Features

- 🎨 **5 Beautiful Gradient Components**:
  - `AnimatedGradientButton` - Interactive buttons with smooth color transitions
  - `AnimatedGradientAvatar` - Circular avatars with animated gradient borders
  - `AnimatedGradientTextField` - Text fields with animated gradient borders
  - `AnimatedGradientContainer` - Containers with customizable gradient backgrounds
  - `GradientShaderText` - Text with animated gradient effects

- 🚀 **Smooth Animations** - All components feature buttery-smooth color transitions
- 🎯 **Easy to Use** - Simple, intuitive API that's plug-and-play ready
- 🎨 **Fully Customizable** - Control colors, durations, sizes, and more
- 📱 **Modern Design** - Perfect for contemporary app interfaces
- ⚡ **Performance Optimized** - Efficient animations that won't slow down your app

> **See it in action!** Check out the screenshots above to see how these beautiful gradient components can transform your app's interface.

## 🚀 Getting Started

Add this package to your `pubspec.yaml`:

```yaml
dependencies:
  prism_gradients_toolkit: ^0.0.1
```

Then run:
```bash
flutter pub get
```

Import the package:
```dart
import 'package:prism_gradients_toolkit/prism_gradients_toolkit.dart';
```

## 📖 Usage

### 🔘 Animated Gradient Button

```dart
AnimatedGradientButton(
  text: 'Click Me!',
  onPressed: () {
    print('Button pressed!');
  },
  width: 200,
  height: 50,
  color1Begin: Colors.purple,
  color1End: Colors.blue,
  color2Begin: Colors.pink,
  color2End: Colors.orange,
)
```

### 👤 Animated Gradient Avatar

```dart
AnimatedGradientAvatar(
  radius: 50,
  beginColor1: Colors.purple,
  endColor1: Colors.blue,
  beginColor2: Colors.pink,
  endColor2: Colors.orange,
  duration: Duration(seconds: 3),
  child: Icon(Icons.person, size: 50, color: Colors.white),
)
```

### 📝 Animated Gradient TextField

```dart
AnimatedGradientTextField(
  beginColor: Colors.purple,
  endColor: Colors.blue,
  hintText: 'Enter your text...',
)
```

### 📦 Animated Gradient Container

```dart
AnimatedGradientContainer(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  startColors: [Colors.purple, Colors.blue],
  endColors: [Colors.pink, Colors.orange],
  duration: Duration(seconds: 4),
  borderRadius: 16.0,
  child: Padding(
    padding: EdgeInsets.all(20),
    child: Text(
      'Beautiful Container!',
      style: TextStyle(color: Colors.white, fontSize: 18),
    ),
  ),
)
```

### 🎨 Gradient Shader Text

```dart
GradientShaderText(
  text: 'Gradient Text!',
  fontSize: 32,
  fontWeight: FontWeight.bold,
  colors: [Colors.purple, Colors.blue, Colors.pink],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  duration: Duration(seconds: 2),
)
```

## 🎯 Complete Example

```dart
import 'package:flutter/material.dart';
import 'package:prism_gradients_toolkit/prism_gradients_toolkit.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Prism Gradients Demo')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Gradient Text
            GradientShaderText(
              text: 'Welcome!',
              fontSize: 32,
              fontWeight: FontWeight.bold,
              colors: [Colors.purple, Colors.blue, Colors.pink],
            ),
            
            // Gradient Avatar
            AnimatedGradientAvatar(
              radius: 50,
              beginColor1: Colors.purple,
              endColor1: Colors.blue,
              beginColor2: Colors.pink,
              endColor2: Colors.orange,
              child: Icon(Icons.person, size: 50, color: Colors.white),
            ),
            
            // Gradient TextField
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: AnimatedGradientTextField(
                beginColor: Colors.purple,
                endColor: Colors.blue,
                hintText: 'Type something...',
              ),
            ),
            
            // Gradient Button
            AnimatedGradientButton(
              text: 'Tap Me!',
              onPressed: () => print('Hello World!'),
              width: 200,
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
```

## 🎨 Customization Options

Each component offers extensive customization:

- **Colors**: Define start and end colors for smooth transitions
- **Duration**: Control animation speed (default: 2-6 seconds)
- **Alignment**: Set gradient direction (topLeft, bottomRight, etc.)
- **Sizes**: Customize dimensions for buttons, avatars, and containers
- **Border Radius**: Adjust corner rounding for containers and buttons

## 📱 Platform Support

- ✅ Android
- ✅ iOS
- ✅ Web
- ✅ macOS
- ✅ Windows
- ✅ Linux

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request. For major changes, please open an issue first to discuss what you would like to change.

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🐛 Issues

Found a bug or have a feature request? Please file an issue on our [GitHub Issues](https://github.com/shujan-khawani/prism_gradients_toolkit/issues) page.

## 👨‍💻 Author

**Shujan Khawani**
- GitHub: [@shujan-khawani](https://github.com/shujan-khawani)

## ⭐ Show Your Support

Give a ⭐️ if this project helped you!

---

Made with ❤️ for the Flutter community
