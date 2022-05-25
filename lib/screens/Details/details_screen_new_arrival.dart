import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_fashion_shop_ui/constant.dart';
import 'package:flutter_fashion_shop_ui/models/product.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'components/colors_dot.dart';

class DetailsScreenNewArrival extends StatefulWidget {
  final Product product;

  const DetailsScreenNewArrival({Key? key, required this.product})
      : super(key: key);

  @override
  State<DetailsScreenNewArrival> createState() =>
      _DetailsScreenNewArrivalState();
}

class _DetailsScreenNewArrivalState extends State<DetailsScreenNewArrival> {
  late bool isLike = false;
  List<Map<String, dynamic>> colorDotColor = [
    {
      'color': const Color(0xffbee8ea),
      'isActive': false,
    },
    {
      'color': const Color(0xff141b4a),
      'isActive': false,
    },
    {
      'color': const Color(0xfff4e5c3),
      'isActive': false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffa0bacc),
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
        children: <Widget>[
          Hero(
            tag: widget.product.image,
            child: Image.asset(
              widget.product.image,
              height: MediaQuery.of(context).size.height * .45,
              fit: BoxFit.fitWidth,
            ),
          ),
          const SizedBox(height: defaultPadding),
          Expanded(
            child: Container(
              padding: const EdgeInsets.fromLTRB(
                defaultPadding,
                defaultPadding * 2,
                defaultPadding,
                defaultPadding,
              ),
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(defaultBorderRadius * 3),
                  topLeft: Radius.circular(defaultBorderRadius * 3),
                ),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: [
                        Expanded(
                          child: Hero(
                            tag: widget.product.title,
                            child: Text(
                              widget.product.title,
                              style: Theme.of(context).textTheme.headline6,
                            ),
                          ),
                        ),
                        const SizedBox(width: defaultPadding),
                        Hero(
                          tag: widget.product.price,
                          child: Text(
                            '\$${widget.product.price}',
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: defaultPadding),
                      child: Text(
                        "The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original",
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    const Text(
                      'Colors',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: defaultPadding / 2),
                    Row(
                      children: List.generate(
                        colorDotColor.length,
                        (index) => ColorDot(
                          color: colorDotColor.elementAt(index)['color'],
                          isActive: colorDotColor.elementAt(index)['isActive'],
                          press: () {
                            setState(() {
                              colorDotColor.elementAt(index)['isActive'] =
                                  !colorDotColor.elementAt(index)['isActive'];
                            });
                          },
                        ),
                      ),
                    ),
                    const SizedBox(height: defaultPadding * 1.5),
                    Center(
                      child: SizedBox(
                        width: 200,
                        height: 48,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: primaryColor,
                            shape: const StadiumBorder(),
                          ),
                          child: const Text('Add to cart'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
