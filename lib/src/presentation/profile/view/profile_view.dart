import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(final BuildContext context) => const Material(
        child: Stack(
          children: [
            AnimatedBG(),
            Text('Profile'),
          ],
        ),
      );
}
