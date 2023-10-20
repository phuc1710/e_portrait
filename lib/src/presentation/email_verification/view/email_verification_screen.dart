import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../core/utils.dart';
import '../../widgets/widgets.dart';

@RoutePage()
class EmailVerificationScreen extends StatelessWidget {
  const EmailVerificationScreen({super.key});

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
                  const TextDS('Email Verification'),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: MQSize.h(context, .01)),
                    child: const TextTL(
                      'We’ve sent you an email to verify your account.'
                      '\n\nPlease check your email to get started',
                    ),
                  ),
                  SizedBox(height: MQSize.h(context, .15)),
                ],
              ),
            ),
          ],
        ),
      );
}
