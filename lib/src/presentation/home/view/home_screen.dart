import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../config/router/routes.dart';
import '../../../core/utils.dart';
import '../../widgets/widgets.dart';
import '../widgets/widgets.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = PageController();
  final List<MaterialColor> colors = [Colors.red, Colors.green, Colors.blue];

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
                  BGCard(
                    child: Column(
                      children: [
                        Container(
                          height: MQSize.h(context, .15),
                          margin: EdgeInsets.symmetric(
                            vertical: MQSize.w(context, .02),
                          ),
                          child: PageView(
                            controller: controller,
                            children: List.generate(
                              colors.length,
                              (final index) => Container(
                                margin: EdgeInsets.symmetric(
                                  horizontal: MQSize.w(context, .02),
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: colors[index],
                                ),
                              ),
                            ),
                          ),
                        ),
                        PageIndicator(controller: controller, colors: colors),
                      ],
                    ),
                  ),
                  SizedBox(height: MQSize.h(context, .01)),
                  BGCard(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: MQSize.w(context, .02),
                        vertical: MQSize.h(context, .01),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const TextHS('Categories'),
                          Category(
                            'Three-dimensional (3D)',
                            () async => context.router.pushNamed(Routes.threeD),
                          ),
                          Category(
                            'Semi-real',
                            () async =>
                                context.router.pushNamed(Routes.semiReal),
                          ),
                          Category(
                            'Anime/Cartoon',
                            () async => context.router.pushNamed(Routes.anime),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}
