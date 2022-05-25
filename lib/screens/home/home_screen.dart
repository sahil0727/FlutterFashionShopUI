import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_fashion_shop_ui/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../explore_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectIndex = 0;

  static List<Widget> screens = [
    const ExploreScreen(),
    const Center(
      child: Text("Favorite"),
    ),
    const Center(
      child: Text("Cart"),
    ),
    const Center(
      child: Text("My Profile"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    log('calling build method');
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, bottom: 8),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: BottomNavigationBar(
            backgroundColor: const Color(0xffe4e3e8),
            type: BottomNavigationBarType.fixed,
            onTap: (index) {
              setState(() {
                selectIndex = index;
              });
            },
            elevation: 0.0,
            currentIndex: selectIndex,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: 'Favorite',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                label: 'Cart',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Account',
              ),
            ],
            selectedItemColor: Colors.black,
            unselectedItemColor: const Color(0xffb5bcc2),
            showSelectedLabels: true,
            showUnselectedLabels: true,
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/icons/menu.svg'),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/icons/Location.svg'),
            const SizedBox(width: defaultPadding / 2),
            Text('15/2 New Mumbai',
                style: Theme.of(context).textTheme.subtitle2)
          ],
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/Notification.svg'),
          ),
        ],
      ),
      body: screens.elementAt(selectIndex),
    );
  }
}
