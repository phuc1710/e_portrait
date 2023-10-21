import 'package:auto_route/auto_route.dart';

import '../../presentation/email_verification/view/email_verification_screen.dart';
import '../../presentation/home/view/home_screen.dart';
import '../../presentation/login/view/login_screen.dart';
import '../../presentation/main/view/main_screen.dart';
import '../../presentation/profile/view/profile_view.dart';
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
        AutoRoute(
          page: EmailVerificationRoute.page,
          path: Routes.emailVerification,
        ),
        AutoRoute(
          page: MainRoute.page,
          path: Routes.main,
          children: [
            AutoRoute(page: HomeRoute.page, path: Routes.home),
            AutoRoute(page: ProfileRoute.page, path: Routes.profile),
          ],
        ),
      ];
}
