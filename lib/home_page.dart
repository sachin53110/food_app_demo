import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  int data = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Skilled Tasker")),
      body: Center(
        child: Container(
          child: Text("$data"),
        ),
      ),
      drawer: const Drawer(),
    );
  }
}
