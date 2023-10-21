import 'package:flutter/material.dart';

class AnimatedBG extends StatefulWidget {
  const AnimatedBG({super.key});

  @override
  State<AnimatedBG> createState() => _AnimatedBGState();
}

class _AnimatedBGState extends State<AnimatedBG>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 10),
  )..repeat();
  late final Animation<Offset> _animation_1 =
      Tween<Offset>(begin: Offset.zero, end: const Offset(1, 0))
          .animate(CurvedAnimation(parent: _controller, curve: Curves.linear));
  late final Animation<Offset> _animation_2 =
      Tween<Offset>(begin: const Offset(-1, 0), end: Offset.zero)
          .animate(CurvedAnimation(parent: _controller, curve: Curves.linear));

  @override
  Widget build(final BuildContext context) => Stack(
        children: [
          SlideTransition(
            position: _animation_1,
            child: Image.asset(
              'assets/images/bg.png',
              fit: BoxFit.fill,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
          SlideTransition(
            position: _animation_2,
            child: Image.asset(
              'assets/images/bg.png',
              fit: BoxFit.fill,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
        ],
      );
}
