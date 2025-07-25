import 'package:flutter/material.dart';

class AnimatedGradientTextField extends StatefulWidget {
  final Color beginColor;
  final Color endColor;
  final String hintText;

  const AnimatedGradientTextField({
    super.key,
    required this.beginColor,
    required this.endColor,
    this.hintText = 'Enter something...',
  });

  @override
  State<AnimatedGradientTextField> createState() =>
      _AnimatedGradientTextFieldState();
}

class _AnimatedGradientTextFieldState extends State<AnimatedGradientTextField>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<Color?> _colorAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..repeat(reverse: true);

    _colorAnimation = ColorTween(
      begin: widget.beginColor,
      end: widget.endColor,
    ).animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _colorAnimation,
      builder: (context, child) {
        final animatedColor = _colorAnimation.value ?? widget.beginColor;
        return TextField(
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: animatedColor, width: 2),
              borderRadius: BorderRadius.circular(12),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: animatedColor, width: 2.5),
              borderRadius: BorderRadius.circular(12),
            ),
            hintText: widget.hintText,
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
