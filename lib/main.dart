import 'package:animated_drawer/about_us_page.dart';
import 'package:animated_drawer/help_page.dart';
//import 'package:animated_drawer/menu_item.dart';
import 'package:animated_drawer/menu_page.dart';
import 'package:animated_drawer/notifications_page.dart';
import 'package:animated_drawer/payment_page.dart';
import 'package:animated_drawer/promo_page.dart';
import 'package:animated_drawer/rate_us_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget getScreen() {
    switch (currentItem) {
      case MenuItems.payment:
        return PaymentPage();
      case MenuItems.promos:
        return PromoPage();
      case MenuItems.notifications:
        return NotificationsPage();
      case MenuItems.help:
        return HelpPage();
      case MenuItems.aboutUs:
        return AboutUsPage();
      default:
        return RateUsPage();
    }
  }

  MenuStuff currentItem = MenuItems.payment;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ZoomDrawer(
        borderRadius: 40,
        angle: -10,
        style: DrawerStyle.defaultStyle,
       slideWidth: MediaQuery.of(context).size.width * 0.5,
       // slideHeight: MediaQuery.of(context).size.width * 0.8,
        showShadow: true,
        menuBackgroundColor: Colors.orangeAccent,
        mainScreen: getScreen(),
        menuScreen: Builder(builder: (context) {
          return MenuPage(
            currentItem: currentItem,
            onSelectedItem: (item) {
              setState(() => currentItem = item);
              ZoomDrawer.of(context)!.close();
            },
          );
        }),
      ),
    );
  }
}
