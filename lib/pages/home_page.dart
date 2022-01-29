// ignore_for_file: unnecessary_null_comparison

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_app_demo/widgets/home_widget/catalog_list.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:food_app_demo/model/TaskDemoModel.dart';
import 'package:food_app_demo/widgets/drawer.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(const Duration(seconds: 3));
    final skillTask = await rootBundle.loadString("assets/files/sample4.json");
    final decodedData = jsonDecode(skillTask);
    final product = decodedData["people"];
    Skill.items =
        List.from(product).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Skilled Tasker"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: SafeArea(
        child: Container(
          padding: Vx.m32,
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            if (Skill.items != null && Skill.items.isNotEmpty)
              const SkillList().expand()
            else
              const CircularProgressIndicator().centered().py16().expand()
          ]),
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
