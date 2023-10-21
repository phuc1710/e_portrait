import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class CategoryNavScreen extends StatelessWidget {
  const CategoryNavScreen({super.key});

  @override
  Widget build(final BuildContext context) => HeroControllerScope(
        controller: HeroController(),
        child: const AutoRouter(),
      );
}
