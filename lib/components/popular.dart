import 'package:flutter/material.dart';
import 'package:flutter_fashion_shop_ui/components/product_card.dart';
import 'package:flutter_fashion_shop_ui/components/selection_tile.dart';

import '../constant.dart';
import '../models/product.dart';
class Popular extends StatelessWidget {
  const Popular({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SelectionTitle(
          title: 'Popular',
          pressSeeAll: () {},
        ),
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              demo_product.length,
                  (index) => Padding(
                padding: const EdgeInsets.only(left: defaultPadding),
                child: ProductCard(
                  image: demo_product.elementAt(index).image,
                  title: demo_product.elementAt(index).title,
                  price: demo_product.elementAt(index).price,
                  bgColor: demo_product.elementAt(index).bgColor,
                  press: () {},
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}