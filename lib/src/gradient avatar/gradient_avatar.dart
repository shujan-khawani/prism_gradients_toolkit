import 'package:flutter/material.dart';

class AnimatedGradientAvatar extends StatefulWidget {
  final double radius;
  final Widget? child;
  final Color beginColor1;
  final Color endColor1;
  final Color beginColor2;
  final Color endColor2;
  final Duration duration;

  const AnimatedGradientAvatar({
    super.key,
    required this.radius,
    this.child,
    required this.beginColor1,
    required this.endColor1,
    required this.beginColor2,
    required this.endColor2,
    this.duration = const Duration(seconds: 6),
  });

  @override
  State<AnimatedGradientAvatar> createState() => _AnimatedGradientAvatarState();
}

class _AnimatedGradientAvatarState extends State<AnimatedGradientAvatar>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<Color?> _color1;
  late final Animation<Color?> _color2;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: widget.duration, vsync: this)
      ..repeat(reverse: true);

    _color1 = ColorTween(
      begin: widget.beginColor1,
      end: widget.endColor1,
    ).animate(_controller);

    _color2 = ColorTween(
      begin: widget.beginColor2,
      end: widget.endColor2,
    ).animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (_, __) {
        return Container(
          width: widget.radius * 2,
          height: widget.radius * 2,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [
                _color1.value ?? widget.beginColor1,
                _color2.value ?? widget.beginColor2,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: ClipOval(child: widget.child),
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
