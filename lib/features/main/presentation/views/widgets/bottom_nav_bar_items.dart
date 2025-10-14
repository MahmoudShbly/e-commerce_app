 import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

List<PersistentBottomNavBarItem> navBarItems = [
      PersistentBottomNavBarItem( 
        icon: Icon(Icons.home),
        title: "Home",
        activeColorPrimary: const Color(0xffDB3022),
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.shopping_cart),
        title: "Shop",
        activeColorPrimary: const Color(0xffDB3022),
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.shopping_bag),
        title: "Bag",
        activeColorPrimary: const Color(0xffDB3022),
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.favorite),
        title: "Favorite",
        activeColorPrimary: const Color(0xffDB3022),
        inactiveColorPrimary: Colors.grey,
      ),
    ];
