import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_fashion_shop_ui/constant.dart';
import 'package:flutter_fashion_shop_ui/models/product.dart';
import 'package:flutter_svg/svg.dart';

class DetailsScreenPopular extends StatefulWidget {
  final Product product;
  const DetailsScreenPopular({Key? key, required this.product})
      : super(key: key);

  @override
  State<DetailsScreenPopular> createState() => _DetailsScreenPopularState();
}

class _DetailsScreenPopularState extends State<DetailsScreenPopular> {
  bool isLike = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe4afbd),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black54),
        ),
        actions: [
          IconButton(
            onPressed: () => setState(() {
              isLike = !isLike;
              log(isLike.toString());
            }),
            icon: CircleAvatar(
              backgroundColor: Colors.white,
              child: SvgPicture.asset(
                'assets/icons/Heart.svg',
                height: 20,
                color: isLike ? Colors.red : Colors.black12,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Image.asset(
            widget.product.image,
            height: MediaQuery.of(context).size.height * .45,
            fit: BoxFit.fitWidth,
          ),
          const SizedBox(height: defaultPadding),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(defaultPadding * 3),
                  topRight: Radius.circular(defaultPadding * 3),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
