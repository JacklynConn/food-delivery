import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_delivery/view/account/account_screen.dart';
import 'package:food_delivery/view/basket/basket_screen.dart';
import 'package:food_delivery/view/browse/browse_screen.dart';
import 'package:food_delivery/view/grocery/grocery_screen.dart';
import 'package:food_delivery/view/home/home_screen.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

class BottomNavigationBarUberEat extends StatefulWidget {
  const BottomNavigationBarUberEat({super.key});

  @override
  State<BottomNavigationBarUberEat> createState() =>
      _BottomNavigationBarUberEatState();
}

class _BottomNavigationBarUberEatState
    extends State<BottomNavigationBarUberEat> {
  final PersistentTabController controller =
      PersistentTabController(initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: PersistentTabView(
        screenTransitionAnimation: const ScreenTransitionAnimation(
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        stateManagement: true,
        backgroundColor: Colors.white,
        handleAndroidBackButtonPress: true,
        controller: controller,
        resizeToAvoidBottomInset: true,
        tabs: [
          PersistentTabConfig(
            screen: const HomeScreen(),
            item: ItemConfig(
              icon: const FaIcon(FontAwesomeIcons.house, size: 20),
              title: "Home",
            ),
          ),
          PersistentTabConfig(
            screen: const BrowseScreen(),
            item: ItemConfig(
              icon: const FaIcon(FontAwesomeIcons.magnifyingGlass, size: 20),
              title: "Browse",
            ),
          ),
          PersistentTabConfig(
            screen: const GroceryScreen(),
            item: ItemConfig(
              icon: const FaIcon(FontAwesomeIcons.basketShopping, size: 20),
              title: "Grocery",
            ),
          ),
          PersistentTabConfig(
            screen: const BasketScreen(),
            item: ItemConfig(
              icon: const FaIcon(FontAwesomeIcons.cartShopping, size: 20),
              title: "Basket",
            ),
          ),
          PersistentTabConfig(
            screen: const AccountScreen(),
            item: ItemConfig(
              icon: const FaIcon(FontAwesomeIcons.user, size: 20),
              title: "Account",
            ),
          ),
        ],
        navBarBuilder: (navBarConfig) => Style1BottomNavBar(
          navBarConfig: navBarConfig,
        ),
      ),
    );
  }
}
