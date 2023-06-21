// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable

import 'package:flutter/material.dart';
import 'package:recipe_app/screens/homepage.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    // var isdark=MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
            icon: Icon(
              Icons.arrow_back,
              size: 32,
            )),
        title: Text("Profile"),
        centerTitle: true,
        actions: [
          TextButton(
              onPressed: () {},
              child: Text(
                "EDIT",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 18),
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(50),
          child: Column(
            children: [
              SizedBox(
                width: 200,
                height: 180,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child:
                      Image(image: AssetImage('assets/recipes/hwawshijpg.jpg')),
                ),
              ),
              SizedBox(height: 15),
              Text('Hazem Bakr'),
              SizedBox(height: 15),
              Text('superAdmin@gmail.com'),
              Divider(),
              SizedBox(
                height: 20,
              ),
              ProfileMenu(
                  title: "Saved Recipes",
                  icon: Icons.bookmark,
                  onPressed: () {}),
              ProfileMenu(
                  title: "Super Plan", icon: Icons.star, onPressed: () {}),
              ProfileMenu(
                  title: "Change Language",
                  icon: Icons.g_translate,
                  onPressed: () {}),
              ProfileMenu(title: "Help", icon: Icons.info, onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    required this.title,
    required this.icon,
    required this.onPressed,
    this.endIcon = true,
    this.textColor,
    super.key,
  });

  final String title;
  final IconData icon;
  final VoidCallback onPressed;
  final bool endIcon;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPressed,
      leading: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.white.withOpacity(0.1),
        ),
        child: Icon(icon),
      ),
      title: Text(title,
          style:
              Theme.of(context).textTheme.bodyLarge?.apply(color: textColor)),
      trailing: endIcon
          ? Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.grey.withOpacity(0.1),
              ),
              child: Icon(Icons.arrow_forward, size: 18.0, color: Colors.grey))
          : null,
    );
  }
}
