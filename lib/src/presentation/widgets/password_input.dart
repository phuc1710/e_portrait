import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../../core/utils.dart';

class PasswordInput extends StatefulWidget {
  const PasswordInput({super.key});

  @override
  State<PasswordInput> createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PasswordInput> {
  bool _isShow = false;

  @override
  Widget build(final BuildContext context) => Container(
        decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        margin: EdgeInsets.symmetric(vertical: MQSize.h(context, .01)),
        padding: const EdgeInsets.all(4),
        child: TextField(
          obscureText: _isShow,
          style: Theme.of(context).textTheme.bodyMedium,
          decoration: InputDecoration(
            border: const OutlineInputBorder(borderSide: BorderSide.none),
            isDense: true,
            contentPadding: EdgeInsets.zero,
            suffixIconConstraints:
                const BoxConstraints(maxWidth: 20, maxHeight: 20),
            suffixIcon: IconButton(
              padding: EdgeInsets.zero,
              splashRadius: 20,
              onPressed: () => setState(() => _isShow = !_isShow),
              icon: Icon(
                _isShow ? IconlyLight.hide : IconlyLight.show,
                color: Colors.black,
              ),
            ),
          ),
          cursorColor: Colors.black,
        ),
      );
}
