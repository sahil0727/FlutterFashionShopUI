import 'package:flutter/material.dart';

class SelectionTitle extends StatelessWidget {
  final String title;
  final VoidCallback pressSeeAll;
  const SelectionTitle({
    required this.title,
    required this.pressSeeAll,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.subtitle1!.copyWith(
                fontWeight: FontWeight.w500,
                color: Colors.black54,
              ),
        ),
        TextButton(
          onPressed: pressSeeAll,
          child: const Text(
            'See All',
            style: TextStyle(color: Colors.black54),
          ),
        ),
      ],
    );
  }
}
