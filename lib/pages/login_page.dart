import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(
      children: [
        Image.asset(
          "assets/images/login_image.png",
          height: 200,
          width: 200,
        ),
        const SizedBox(height: 30.0),
        const Text(
          "Skiller Tasker",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 30.0),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                    hintText: "Enter Email", labelText: "UserEmail"),
              ),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                    hintText: "Enter Password", labelText: "Password"),
              )
            ],
          ),
        ),
        SizedBox(height: 30),
        ElevatedButton(
          onPressed: () {},
          child: Text("Login"),
          style: TextButton.styleFrom(),
        )
      ],
    ));
  }
}
