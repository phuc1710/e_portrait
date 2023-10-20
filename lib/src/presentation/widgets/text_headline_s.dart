import 'package:flutter/material.dart';

class TextHS extends StatelessWidget {
  const TextHS(this._text, {super.key});

  final String _text;

  @override
  Widget build(final BuildContext context) =>
      Text(_text, style: Theme.of(context).textTheme.headlineSmall);
}
