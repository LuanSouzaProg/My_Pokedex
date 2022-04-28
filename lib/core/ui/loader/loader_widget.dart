import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:flutter_svg/flutter_svg.dart';

class LoaderWidget extends StatefulWidget {
  const LoaderWidget({Key? key}) : super(key: key);

  @override
  State<LoaderWidget> createState() => _LoaderState();
}

class _LoaderState extends State<LoaderWidget> with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(vsync: this, duration: const Duration(seconds: 2))
    ..repeat();

  @override
  dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: _controller,
        builder: (_, child) {
          return Transform.rotate(
            angle: _controller.value * 2 * math.pi,
            child: child,
          );
        },
        child: Image.asset(
          'assets/pokeball.png',
          height: 60,
        ),
      ),
    );
  }
}