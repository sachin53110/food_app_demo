import 'package:flutter/material.dart';
import 'package:food_app_demo/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  int data = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Skilled Tasker"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.vertical(
                bottom: Radius.elliptical(
                    MediaQuery.of(context).size.width, 100.0)),
          ),
          child: Text("$data"),
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
