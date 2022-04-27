import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:pet_land/core/colors/colors.dart';
import 'package:pet_land/features/shop/presentation/shop_home_screen.dart';

import 'cart_screen.dart';
import 'category_screen.dart';
import 'favourite_screen.dart';

class ShopTabsScreen extends StatefulWidget {
  const ShopTabsScreen({Key? key}) : super(key: key);

  @override
  _ShopTabsScreenState createState() => _ShopTabsScreenState();
}

class _ShopTabsScreenState extends State<ShopTabsScreen> {
  int _index = 0;

  List<Map<String, dynamic>> pages = [
    {"index": 0, "page": const ShopHomeScreen()},
    {"index": 1, "page": const CategoryScreen()},
    {"index": 2, "page": const CartScreen()},
    {"index": 3, "page": const FavouriteScreen()},
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: SizedBox(
        child: FloatingNavbar(
          backgroundColor: MyColors.meanColor,
          selectedItemColor: MyColors.meanColor,
          items: [
            FloatingNavbarItem(
              icon: Icons.home_filled,
              title:  'Home',
            ),
            FloatingNavbarItem(
              icon: Icons.list,
              title:  'Category',
            ),
            FloatingNavbarItem(
              icon: Icons.shopping_cart_outlined,
              title:  'Cart',
            ),
            FloatingNavbarItem(
              icon: Icons.favorite_outline_outlined,
              title:  'Favourite',
            ),
          ],
          currentIndex: _index,
          onTap: (int value) {
            setState(() {
              _index = value;
            });
          },
        ),
      ),
      body: pages[_index]['page'],
    ));
  }
}
