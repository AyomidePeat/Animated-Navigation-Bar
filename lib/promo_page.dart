import 'package:animated_drawer/menu_widget.dart';
import 'package:flutter/material.dart';

class PromoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
   appBar:    AppBar( backgroundColor: Colors.purple,
   
        title: Text("Promos Page"),
        leading: MenuWidget(),
    )  );
}
