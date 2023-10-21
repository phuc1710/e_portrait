import 'package:flutter/material.dart';

class BGCard extends StatelessWidget {
  const BGCard({required this.child, super.key});

  final Widget child;

  @override
  Widget build(final BuildContext context) => Card(
        color: const Color(0xeeffffff),
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: child,
      );
}
