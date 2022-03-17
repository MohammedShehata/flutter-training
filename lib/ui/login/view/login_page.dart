import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_training/theme/app_colors.dart';

class LoginPage extends StatelessWidget {
  const LoginPage();

  @override
  Widget build(BuildContext context) {
    return LoginView();
  }
}

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Container(
        color: AppColors.white,
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(25, 11, 25, 11),
                label: Text("email"),
                fillColor: AppColors.textFieldBackground,
                filled: true,
                border: InputBorder.none,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                label: Text("email"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
