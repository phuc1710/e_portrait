import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../../../config/router/app_router.dart';
import '../../../core/utils.dart';

@RoutePage()
class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(final BuildContext context) => AutoTabsRouter(
        routes: const [HomeRoute(), ProfileRoute()],
        builder: (final context, final child) {
          final tabsRouter = AutoTabsRouter.of(context);
          return Scaffold(
            body: child,
            // ignore: use_decorated_box
            bottomNavigationBar: Container(
              height: MQSize.h(context, .075),
              decoration: const BoxDecoration(
                border: Border(top: BorderSide(width: 2)),
              ),
              child: BottomNavigationBar(
                currentIndex: tabsRouter.activeIndex,
                onTap: tabsRouter.setActiveIndex,
                showSelectedLabels: false,
                showUnselectedLabels: false,
                selectedItemColor: Theme.of(context).primaryColor,
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(IconlyLight.home),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(IconlyLight.profile),
                    label: 'Profile',
                  ),
                ],
              ),
            ),
          );
        },
      );
}
