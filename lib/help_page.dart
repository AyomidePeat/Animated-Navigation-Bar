import 'package:animated_drawer/menu_widget.dart';
import 'package:flutter/material.dart';

class HelpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
   appBar:    AppBar( backgroundColor: Colors.orange,
   
        title: Text("Help Page"),
        leading: MenuWidget(),
    )  );
}
