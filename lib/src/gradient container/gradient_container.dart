import 'package:flutter/material.dart';

class AnimatedGradientContainer extends StatefulWidget {
  final Alignment begin;
  final Alignment end;
  final List<Color> startColors;
  final List<Color> endColors;
  final Widget child;
  final Duration duration;
  final double borderRadius;

  const AnimatedGradientContainer({
    super.key,
    required this.begin,
    required this.end,
    required this.startColors,
    required this.endColors,
    required this.child,
    this.duration = const Duration(seconds: 4),
    this.borderRadius = 16.0,
  });

  @override
  State<AnimatedGradientContainer> createState() =>
      _AnimatedGradientContainerState();
}

class _AnimatedGradientContainerState extends State<AnimatedGradientContainer>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late List<Animation<Color?>> _colorAnimations;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this, duration: widget.duration)
      ..repeat(reverse: true);

    _colorAnimations = List.generate(widget.startColors.length, (index) {
      return ColorTween(
        begin: widget.startColors[index],
        end: widget.endColors[index],
      ).animate(_controller);
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: widget.begin,
              end: widget.end,
              colors: _colorAnimations
                  .map((anim) => anim.value ?? Colors.transparent)
                  .toList(),
            ),
            borderRadius: BorderRadius.circular(widget.borderRadius),
          ),
          child: widget.child,
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
