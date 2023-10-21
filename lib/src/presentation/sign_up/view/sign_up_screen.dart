import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../config/router/routes.dart';
import '../../../core/utils.dart';
import '../../widgets/widgets.dart';

@RoutePage()
class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
                    child: const TextDS('Sign up'),
                  ),
                  const TextTL('Account'),
                  const Input(),
                  const TextTL('Password'),
                  const PasswordInput(),
                  const TextTL('Confirm password'),
                  const PasswordInput(),
                  const TextTL('Email'),
                  const Input(),
                  CheckBoxRow(
                    child: Padding(
                      padding: EdgeInsets.only(left: MQSize.w(context, .02)),
                      child: const TextBL(
                        // ignore: lines_longer_than_80_chars
                        'i agree to the terms and conditions and the privacy policy',
                      ),
                    ),
                  ),
                  MainButton(
                    'Create account',
                    () async =>
                        context.router.pushNamed(Routes.emailVerification),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: MQSize.h(context, .01)),
                    child: const Center(
                      child: TextTS('Already have an account?'),
                    ),
                  ),
                  SubButton(
                    'Login',
                    () async => context.router.replaceNamed(Routes.logIn),
                  ),
                  SizedBox(height: MQSize.h(context, .15)),
                ],
              ),
            ),
          ],
        ),
      );
}
