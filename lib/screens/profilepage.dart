// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'homepage.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Column(children: [
      Container(
        height: height * 0.25,
        padding: EdgeInsets.only(
            top: height * 0.035, right: width * 0.02, left: width * 0.02),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(150),
                bottomRight: Radius.circular(150)),
            color: Colors.green),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  size: 38,
                )),
            Text(
              "Profile",
              style: TextStyle(fontSize: 24),
            ),
            Text(
              "EDIT",
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    ]));
  }
}
