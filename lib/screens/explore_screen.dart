import 'package:flutter/material.dart';

import '../components/categories.dart';
import '../components/new_arrival.dart';
import '../components/popular.dart';
import '../components/search_form.dart';
import '../constant.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.all(defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Explore',
            style: Theme.of(context).textTheme.headline4!.copyWith(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
          ),
          const Text(
            'Best outfits for you',
            style: TextStyle(fontSize: 18),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: defaultPadding),
            child: SearchForm(),
          ),
          const Categories(),
          const SizedBox(height: defaultPadding),
          const NewArrival(),
          const SizedBox(height: defaultPadding),
          const Popular(),
        ],
      ),
    );
  }
}
