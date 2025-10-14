import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

part 'navigation_state.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit():super(NavigationInitial()); 
  List<Widget> screens = [
   
    Container(color: Colors.red),
    Container(color: Colors.green), 
    Container(color: Colors.blue), 
    Container(color: Colors.yellow), 
  ];
   List<PersistentBottomNavBarItem> navBarItems = [
      PersistentBottomNavBarItem( 
        icon: Icon(Icons.home),
        title: "Home",
        activeColorPrimary: Colors.blue,
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


}
