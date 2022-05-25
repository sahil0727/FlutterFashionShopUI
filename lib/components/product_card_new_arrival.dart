import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fashion_shop_ui/models/product.dart';
import 'package:flutter_fashion_shop_ui/screens/Details/details_screen_new_arrival.dart';

import '../constant.dart';

class ProductCardForNewArrival extends StatelessWidget {
  final String image, title;
  final int price;
  final Color bgColor;
  final int index;
  const ProductCardForNewArrival({
    Key? key,
    required this.image,
    required this.title,
    required this.price,
    required this.index,
    required this.bgColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) => DetailsScreenNewArrival(
              product: demoProduct.elementAt(index),
            ),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(defaultPadding / 2),
        width: 154,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(defaultBorderRadius),
          ),
        ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(defaultBorderRadius),
                ),
                color: bgColor,
              ),
              child: Hero(
                tag: image,
                child: Image.asset(
                  image,
                  height: 132,
                ),
              ),
            ),
            const SizedBox(height: defaultPadding / 2),
            Row(
              children: [
                Expanded(
                  child: Hero(
                    tag: title,
                    child: Text(
                      title,
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: defaultPadding / 4,
                ),
                Hero(
                  tag: price,
                  child: Text(
                    '\$$price',
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
