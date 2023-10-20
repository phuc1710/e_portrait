import 'package:flutter/material.dart';

import '../../core/utils.dart';
import 'text_headline_s.dart';

class MainButton extends StatelessWidget {
  const MainButton(this._text, this._onPressed, {super.key});

  final String _text;
  final VoidCallback _onPressed;

  @override
  Widget build(final BuildContext context) => Padding(
        padding: EdgeInsets.symmetric(vertical: MQSize.h(context, .01)),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xff90dbd6),
            elevation: 2,
            minimumSize: Size(MQSize.w(context, .8), MQSize.h(context, .0625)),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: const BorderSide(width: 2),
            ),
          ),
          onPressed: _onPressed,
          child: HSText(_text),
        ),
      );
}
