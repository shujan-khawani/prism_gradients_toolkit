import 'package:flutter/material.dart';

class AnimatedGradientButton extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;
  final double width;
  final double height;
  final double radius;

  /// User-defined gradient color inputs
  final Color color1Begin;
  final Color color1End;
  final Color color2Begin;
  final Color color2End;

  const AnimatedGradientButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.width = 200,
    this.height = 50,
    this.color1Begin = Colors.deepOrange,
    this.color1End = Colors.purple,
    this.color2Begin = Colors.teal,
    this.color2End = Colors.cyanAccent,
    this.radius = 30,
  });

  @override
  State<AnimatedGradientButton> createState() => _AnimatedGradientButtonState();
}

class _AnimatedGradientButtonState extends State<AnimatedGradientButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _color1;
  late Animation<Color?> _color2;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 4),
      vsync: this,
    )..repeat(reverse: true);

    _color1 = ColorTween(
      begin: widget.color1Begin,
      end: widget.color1End,
    ).animate(_controller);

    _color2 = ColorTween(
      begin: widget.color2Begin,
      end: widget.color2End,
    ).animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (_, __) {
        return GestureDetector(
          onTap: widget.onPressed,
          child: Container(
            width: widget.width,
            height: widget.height,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(widget.radius),
              gradient: LinearGradient(
                colors: [
                  _color1.value ?? widget.color1Begin,
                  _color2.value ?? widget.color2Begin,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Text(
              widget.text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
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
