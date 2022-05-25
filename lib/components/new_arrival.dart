import 'package:flutter/cupertino.dart';
import 'package:flutter_fashion_shop_ui/components/product_card.dart';
import 'package:flutter_fashion_shop_ui/components/selection_tile.dart';
import 'package:flutter_fashion_shop_ui/screens/Details/details_screen.dart';

import '../constant.dart';
import '../models/product.dart';

class NewArrival extends StatelessWidget {
  const NewArrival({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SelectionTitle(
          title: 'New Arrival',
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
                  press: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) =>  DetailsScreen(
                          product: demo_product.elementAt(index),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
