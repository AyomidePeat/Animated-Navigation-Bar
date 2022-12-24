import 'package:animated_drawer/menu_widget.dart';
import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  @override
  
  Widget build(BuildContext context) => Scaffold(
   appBar:    AppBar( backgroundColor: Colors.green,
   
        title: Text("Notifications Page"),
        leading: MenuWidget(),
    )  );
}
