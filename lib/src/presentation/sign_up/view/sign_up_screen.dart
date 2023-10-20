import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../core/utils.dart';
import '../../widgets/widgets.dart';

@RoutePage()
class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: MQSize.h(context, .02)),
                    child: const DSText('Sign up'),
                  ),
                  const TLText('Account'),
                  const Input(),
                  const TLText('Password'),
                  const PasswordInput(),
                  const TLText('Confirm password'),
                  const PasswordInput(),
                  const TLText('Email'),
                  const Input(),
                  CheckBoxRow(
                    child: Padding(
                      padding: EdgeInsets.only(left: MQSize.w(context, .02)),
                      child: const BLText(
                        // ignore: lines_longer_than_80_chars
                        'i agree to the terms and conditions and the privacy policy',
                      ),
                    ),
                  ),
                  MainButton('Create account', () {}),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: MQSize.h(context, .01)),
                    child: const Center(
                      child: TSText('Already have an account?'),
                    ),
                  ),
                  SubButton('Login', () {}),
                  SizedBox(height: MQSize.h(context, .15)),
                ],
              ),
            ),
          ],
        ),
      );
}
