import 'package:flutter/material.dart';

import '../../core/utils.dart';

class CheckBoxRow extends StatefulWidget {
  const CheckBoxRow({required this.child, super.key});

  final Widget child;

  @override
  State<CheckBoxRow> createState() => _CheckBoxRowState();
}

class _CheckBoxRowState extends State<CheckBoxRow> {
  bool? isSth = false;

  @override
  Widget build(final BuildContext context) => Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: MQSize.w(context, .05),
            height: MQSize.h(context, .03),
            child: Checkbox(
              activeColor: Theme.of(context).primaryColor,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              onChanged: (final _) => setState(() => isSth = _),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
                side: const BorderSide(width: 2),
              ),
              side: MaterialStateBorderSide.resolveWith(
                (final states) => const BorderSide(width: 2),
              ),
              value: isSth,
            ),
          ),
          Expanded(child: widget.child),
        ],
      );
}
