// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:recipe_app/screens/profilepage.dart';
import 'package:recipe_app/screens/reciepepage.dart';

import 'package:recipe_app/screens/profile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
            top: height * 0.04,
            bottom: height * 0.02,
            left: width * 0.03,
            right: width * 0.03),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.menu_outlined,
                  size: 38,
                ),
                Text(
                  "Logo Goes Here",
                  style: TextStyle(fontSize: 24),
                ),
                Icon(
                  Icons.search_outlined,
                  size: 38,
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    child: Text(
                      "All",
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                    onPressed: () {},
                  ),
                  TextButton(
                    child: Text(
                      "Egyptian",
                      style: TextStyle(fontSize: 18, color: Colors.green),
                    ),
                    onPressed: () {},
                  ),
                  TextButton(
                    child: Text(
                      "Italian",
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                    onPressed: () {},
                  ),
                  TextButton(
                    child: Text(
                      "Mexican",
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                    onPressed: () {},
                  ),
                  TextButton(
                    child: Text(
                      "Chienese",
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                    onPressed: () {},
                  ),
                  TextButton(
                    child: Text(
                      "Indian",
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: height * 0.3,
                      padding: EdgeInsets.only(top: 12),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Colors.red[700]),
                      child: ListTile(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RecipePage()),
                          );
                        },
                        trailing: Image(
                          image: AssetImage("assets/recipes/ful.jpg"),
                          height: height * 0.4,
                          width: width * 0.3,
                        ),
                        contentPadding:
                            EdgeInsets.only(top: 16, bottom: 8, left: 20),
                        title: Text(
                          "Egyptian beans",
                          style: TextStyle(fontSize: 28, color: Colors.white),
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                              "Recipe Details",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.inventory_2_outlined,
                                  color: Colors.white,
                                  size: 22,
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Text(
                                  "7 Ingredients",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.timer_outlined,
                                  color: Colors.white,
                                  size: 22,
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Text(
                                  "30 Minutes",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Container(
                      height: height * 0.3,
                      padding: EdgeInsets.only(top: 12),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Color.fromARGB(255, 66, 141, 5)),
                      child: ListTile(
                        trailing: Image(
                          image: AssetImage("assets/recipes/fattahjpg.jpg"),
                          height: height * 0.5,
                          width: width * 0.3,
                        ),
                        contentPadding:
                            EdgeInsets.only(top: 16, bottom: 8, left: 20),
                        title: Text(
                          "Fattah Meat",
                          style: TextStyle(fontSize: 28, color: Colors.white),
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                              "Recipe Details",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.inventory_2_outlined,
                                  color: Colors.white,
                                  size: 22,
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Text(
                                  "5 Ingredients",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.timer_outlined,
                                  color: Colors.white,
                                  size: 22,
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Text(
                                  "50 Minutes",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Container(
                      height: height * 0.3,
                      padding: EdgeInsets.only(top: 12),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Colors.blue[400]),
                      child: ListTile(
                        trailing: Image(
                          image: AssetImage("assets/recipes/kosharyjpg.jpg"),
                          height: height * 0.4,
                          width: width * 0.3,
                        ),
                        contentPadding:
                            EdgeInsets.only(top: 16, bottom: 8, left: 20),
                        title: Text(
                          "Koshary",
                          style: TextStyle(fontSize: 28, color: Colors.white),
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                              "Recipe Details",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.inventory_2_outlined,
                                  color: Colors.white,
                                  size: 22,
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Text(
                                  "12 Ingredients",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.timer_outlined,
                                  color: Colors.white,
                                  size: 22,
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Text(
                                  "60 Minutes",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.home,
                    color: Colors.green,
                    size: 32,
                  ),
                ),
                Icon(
                  Icons.receipt_long,
                  color: Colors.grey,
                  size: 32,
                ),
                Icon(
                  Icons.camera_alt,
                  color: Colors.grey,
                  size: 32,
                ),
                Icon(
                  Icons.timer,
                  color: Colors.grey,
                  size: 32,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Profile()),
                    );
                  },
                  icon: Icon(
                    Icons.person,
                    color: Colors.grey,
                    size: 32,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
