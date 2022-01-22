import 'package:flutter/material.dart';
import 'package:food_app_demo/model/TaskDemoModel.dart';
import 'package:food_app_demo/widgets/drawer.dart';
import 'package:food_app_demo/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  int data = 3;

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(50, (index) => Skill.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Skilled Tasker"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummyList[index],
            );
          },
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
