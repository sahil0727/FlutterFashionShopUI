import 'package:flutter/material.dart';
import 'package:flutter_fashion_shop_ui/components/product_card_popular.dart';
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
              demoProduct.length,
              (index) => Padding(
                padding: const EdgeInsets.only(left: defaultPadding),
                child: ProductCardForPopular(
                  image: demoProduct.elementAt(index).image,
                  title: demoProduct.elementAt(index).title,
                  price: demoProduct.elementAt(index).price,
                  bgColor: demoProduct.elementAt(index).bgColor,
                  index: index,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
