import 'package:flutter/material.dart';
import 'package:food_app_demo/pages/login_page.dart';
import 'package:food_app_demo/route/routes.dart';

import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        themeMode: ThemeMode.system,
        darkTheme: ThemeData(
            brightness: Brightness.dark, primaryColor: Colors.green[400]),
        routes: {
          "/": (context) => LoginPage(),
          MyRoutes.HomeRout: (context) => HomePage(),
          MyRoutes.LoginRout: (context) => LoginPage()
        });
  }
}
