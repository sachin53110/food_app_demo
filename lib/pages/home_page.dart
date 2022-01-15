import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  int data = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Skilled Tasker")),
      body: Center(
        child: Container(
          decoration: new BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.vertical(
                bottom: Radius.elliptical(
                    MediaQuery.of(context).size.width, 100.0)),
          ),
          child: Text("$data"),
        ),
      ),
      drawer: const Drawer(),
    );
  }
}
