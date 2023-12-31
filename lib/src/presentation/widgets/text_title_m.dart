import 'package:flutter/material.dart';

class TextTM extends StatelessWidget {
  const TextTM(this._text, {super.key});

  final String _text;

  @override
  Widget build(final BuildContext context) =>
      Text(_text, style: Theme.of(context).textTheme.titleMedium);
}
