import 'package:flutter/material.dart';

import 'product_card.dart';
import 'text_label_m.dart';
import 'text_label_s.dart';
import 'text_title_l.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo(this.color, this.product, {super.key});

  final Color color;
  final String product;

  @override
  Widget build(final BuildContext context) => ProductCard(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: color,
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: ListView(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        children: [
                          TextLM(product),
                          const TextLS('Author'),
                        ],
                      ),
                    ),
                    const TextTL(r'$99.99'),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
