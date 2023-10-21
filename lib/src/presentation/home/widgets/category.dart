import 'package:flutter/material.dart';

import '../../../core/utils.dart';
import '../../widgets/widgets.dart';

class Category extends StatelessWidget {
  const Category(this.title, this.onTap, {super.key});

  final String title;
  final VoidCallback onTap;

  @override
  Widget build(final BuildContext context) => Hero(
        tag: 'bg_$title',
        child: BGCard(
          child: InkWell(
            borderRadius: BorderRadius.circular(10),
            onTap: onTap,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MQSize.w(context, .02),
                vertical: MQSize.h(context, .01),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextTL(title),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                      3,
                      (final index) => Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Theme.of(context).primaryColor,
                          border: Border.all(),
                        ),
                        width: MQSize.w(context, .2),
                        height: MQSize.h(context, .11),
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
