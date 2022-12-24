import 'package:animated_drawer/menu_widget.dart';
import 'package:flutter/material.dart';

class RateUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
   appBar:    AppBar( backgroundColor: Colors.red,
   
        title: Text("RateUs Page"),
        leading: MenuWidget(),
    )  );
}
