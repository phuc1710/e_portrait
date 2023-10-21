import 'package:flutter/material.dart';

class TextBM extends StatelessWidget {
  const TextBM(this._text, {super.key});

  final String _text;

  @override
  Widget build(final BuildContext context) =>
      Text(_text, style: Theme.of(context).textTheme.bodyMedium);
}
