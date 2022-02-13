import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app_demo/pages/home_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
                decoration: BoxDecoration(color: Colors.green),
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  decoration: BoxDecoration(color: Colors.green),
                  accountEmail: Text(
                    "Sachinladwa1995@gmail.com",
                    style: TextStyle(),
                  ),
                  accountName: Text("Sachin kumar"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage:
                        AssetImage("assets/images/login_image.png"),
                  ),
                )),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.black,
              ),
              title: Text(
                "TaskPro",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.black),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.black,
              ),
              title: Text(
                "MyProfile",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.black),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.command,
                color: Colors.black,
              ),
              title: Text(
                "MyTask",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.black),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.gift,
                color: Colors.black,
              ),
              title: Text(
                "Reward",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.black),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.share,
                color: Colors.black,
              ),
              title: Text(
                "Affiliate",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.black),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.slider_horizontal_below_rectangle,
                color: Colors.black,
              ),
              title: Text(
                "Notification",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.black),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.info,
                color: Colors.black,
              ),
              title: Text(
                "About",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.black),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.back,
                color: Colors.black,
              ),
              title: Text(
                "Logout",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
