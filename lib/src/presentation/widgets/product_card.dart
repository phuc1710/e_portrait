import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({required this.child, super.key});

  final Widget child;

  @override
  Widget build(final BuildContext context) => Card(
        color: const Color(0xeeffffff),
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(),
        ),
        child: child,
      );
}
