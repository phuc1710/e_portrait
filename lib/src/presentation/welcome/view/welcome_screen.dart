import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../config/router/routes.dart';
import '../../../core/utils.dart';
import '../../widgets/widgets.dart';

@RoutePage()
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(final BuildContext context) => Material(
        child: Stack(
          children: [
            // TODO(phucndh): replace this container by image
            Container(color: Colors.black12),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: MQSize.w(context, .1)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const TextDS('E-Portrait'),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: MQSize.h(context, .01)),
                    child: const TextTM(
                      'Bring your imagination from scratch to reality',
                    ),
                  ),
                  MainButton(
                    'Sign Up',
                    () async => context.router.pushNamed(Routes.signUp),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: MQSize.h(context, .01)),
                    child: const Center(
                      child: TextTS('Already have an account?'),
                    ),
                  ),
                  MainButton('Login', () {}),
                  SizedBox(height: MQSize.h(context, .15)),
                ],
              ),
            ),
          ],
        ),
      );
}
