import 'package:flutter/material.dart';

import '../../core/utils.dart';
import 'bg_card.dart';
import 'product_info.dart';
import 'text_title_l.dart';

class ProductGrid extends StatelessWidget {
  const ProductGrid({
    required this.title,
    required final List<String> products,
    required this.colors,
    super.key,
  }) : _products = products;

  final String title;
  final List<String> _products;
  final List<MaterialColor> colors;

  @override
  Widget build(final BuildContext context) => Hero(
        tag: 'bg_$title',
        child: BGCard(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MQSize.w(context, .02),
              vertical: MQSize.h(context, .01),
            ),
            child: SizedBox(
              height: MQSize.h(context, .75),
              child: Column(
                children: [
                  TextTL(title),
                  Flexible(
                    child: GridView.builder(
                      itemCount: _products.length,
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 15,
                        childAspectRatio: 0.9,
                      ),
                      itemBuilder: (final context, final index) => ProductInfo(
                        colors[index % colors.length],
                        _products[index],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
