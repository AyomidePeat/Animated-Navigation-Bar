import 'package:animated_drawer/menu_widget.dart';
import 'package:flutter/material.dart';

class PaymentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
   appBar:    AppBar( backgroundColor: Colors.blue,
   
        title: Text("Payment Page"),
        leading: MenuWidget(),
    )  );
}
