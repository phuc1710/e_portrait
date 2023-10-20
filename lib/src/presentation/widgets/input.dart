import 'package:flutter/material.dart';

import '../../core/utils.dart';

class Input extends StatelessWidget {
  const Input({super.key});

  @override
  Widget build(final BuildContext context) => Container(
        decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.circular(10),
        ),
        margin: EdgeInsets.symmetric(vertical: MQSize.h(context, .01)),
        padding: const EdgeInsets.all(4),
        child: TextField(
          style: Theme.of(context).textTheme.bodyMedium,
          decoration: const InputDecoration(
            border: OutlineInputBorder(borderSide: BorderSide.none),
            isDense: true,
            contentPadding: EdgeInsets.zero,
          ),
          cursorColor: Colors.black,
        ),
      );
}
