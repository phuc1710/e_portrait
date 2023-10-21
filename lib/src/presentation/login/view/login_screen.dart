import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../config/router/app_router.dart';
import '../../../config/router/routes.dart';
import '../../../core/utils.dart';
import '../../widgets/widgets.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(final BuildContext context) => Material(
        child: Stack(
          children: [
            const AnimatedBG(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: MQSize.w(context, .1)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: MQSize.h(context, .02)),
                    child: const TextDS('Login'),
                  ),
                  const TextTL('Account'),
                  const Input(),
                  const TextTL('Password'),
                  const PasswordInput(),
                  MainButton(
                    'Login',
                    () async => context.router.pushAndPopUntil(
                      const MainRoute(),
                      predicate: (final _) => false,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: MQSize.h(context, .01)),
                    child: const Center(
                      child: TextTS("Don't have an account?"),
                    ),
                  ),
                  SubButton(
                    'Sign up',
                    () async => context.router.replaceNamed(Routes.signUp),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: MQSize.h(context, .01)),
                    child: const Center(
                      child: TextTS('Forget account/password?'),
                    ),
                  ),
                  SizedBox(height: MQSize.h(context, .1)),
                ],
              ),
            ),
          ],
        ),
      );
}
