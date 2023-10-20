import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

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
                  const DSText('E-Portrait'),
                  const TMText(
                    'Bring your imagination from scratch to reality',
                  ),
                  MainButton('Sign Up', () {}),
                  const TSText('Already have an account?'),
                  MainButton('Login', () {}),
                  SizedBox(height: MQSize.h(context, .15)),
                ],
              ),
            ),
          ],
        ),
      );
}
