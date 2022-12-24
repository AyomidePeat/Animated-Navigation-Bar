
import 'package:flutter/material.dart';

class MenuStuff {
  final String title;
  final IconData icon;
  const MenuStuff(this.title, this.icon);
}

class MenuItems {
  static const payment = MenuStuff('Payment', Icons.payment);
  static const promos = MenuStuff('Promos', Icons.card_giftcard);
  static const notifications = MenuStuff('Notifications', Icons.notifications);
  static const help = MenuStuff('Help', Icons.help);
  static const aboutUs = MenuStuff('About Us', Icons.info_outlined);
  static const rateUs = MenuStuff('Rate Us', Icons.star_border);

  static const all = <MenuStuff>[
    payment,
    promos,
    notifications,
    help,
    aboutUs,
    rateUs,
  ];
}

class MenuPage extends StatelessWidget {
  final MenuStuff currentItem;
  final ValueChanged<MenuStuff> onSelectedItem;
  const MenuPage({
    Key? key,
    required this.currentItem,
    required this.onSelectedItem,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) => Theme(
        data: ThemeData.dark(),
        child: Scaffold(
            backgroundColor: Colors.indigo,
            body: SafeArea(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Spacer(),
                ...MenuItems.all.map(buildMenuItem).toList(),
                Spacer(flex: 2),
              ],
            ))),
      );
  Widget buildMenuItem(MenuStuff item) => ListTileTheme(
        selectedColor: Colors.white,
        child: ListTile(
          selectedTileColor: Colors.black26,
          selected: currentItem == item,
          minLeadingWidth: 20,
          leading: Icon(item.icon),
          title: Text(item.title),
          onTap: () {
            onSelectedItem(item);
          },
        ),
      );
}
