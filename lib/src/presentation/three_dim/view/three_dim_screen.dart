import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../core/utils.dart';
import '../../widgets/widgets.dart';

@RoutePage()
class ThreeDimScreen extends StatefulWidget {
  const ThreeDimScreen({super.key});

  @override
  State<ThreeDimScreen> createState() => _ThreeDimScreenState();
}

class _ThreeDimScreenState extends State<ThreeDimScreen> {
  final controller = PageController();
  final List<MaterialColor> colors = [Colors.red, Colors.green, Colors.blue];
  final List<String> _products = [
    'The Desert',
    'Pancake',
    'Bubble Girl',
    'Instagram',
    'A couch',
    'Peachtober',
    'Lilac girl',
    'Oddish',
    'The Desert',
    'Pancake',
  ];

  @override
  Widget build(final BuildContext context) => Material(
        child: Stack(
          children: [
            const AnimatedBG(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: MQSize.w(context, .05)),
              child: ListView(
                children: [
                  const Search(),
                  SizedBox(height: MQSize.h(context, .01)),
                  ProductGrid(
                    title: 'Three-dimensional (3D)',
                    products: _products,
                    colors: colors,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}
