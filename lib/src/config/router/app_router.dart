import 'package:auto_route/auto_route.dart';

import '../../presentation/login/view/login_screen.dart';
import '../../presentation/sign_up/view/sign_up_screen.dart';
import '../../presentation/welcome/view/welcome_screen.dart';
import 'routes.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: WelcomeRoute.page, path: Routes.welcome, initial: true),
        AutoRoute(page: SignUpRoute.page, path: Routes.signUp),
        AutoRoute(page: LoginRoute.page, path: Routes.logIn),
      ];
}
