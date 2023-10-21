import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageIndicator extends StatelessWidget {
  const PageIndicator({
    required this.controller,
    required this.colors,
    super.key,
  });

  final PageController controller;
  final List<MaterialColor> colors;

  @override
  Widget build(final BuildContext context) => Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: SmoothPageIndicator(
          controller: controller,
          count: colors.length,
          effect: const WormEffect(
            dotHeight: 8,
            dotWidth: 8,
            dotColor: Colors.black,
            activeDotColor: Colors.grey,
            paintStyle: PaintingStyle.stroke,
          ),
        ),
      );
}
