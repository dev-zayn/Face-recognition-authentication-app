import 'dart:io';

import 'package:face_net_authentication/pages/widgets/app_button.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class Profile extends StatelessWidget {
  const Profile(this.username, {Key key, this.imagePath}) : super(key: key);
  final String username;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 20,
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: FileImage(File(imagePath)),
                      ),
                    ),
                    margin: EdgeInsets.all(20),
                    width: 50,
                    height: 50,
                  ),
                  Text(
                    'Welcome back ' + username + '!',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            Positioned(
                bottom: 20,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppButton(
                      text: "LOG OUT",
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MyHomePage()),
                        );
                      },
                      icon: Icon(
                        Icons.logout,
                        color: Colors.white,
                      ),
                      color: Color(0xFFFF6161),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
