// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:recipe_app/screens/homepage.dart';
import 'package:recipe_app/screens/profile.dart';
import 'package:recipe_app/screens/profilepage.dart';

class RecipePage extends StatelessWidget {
  const RecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.red[300],
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
                  "Logo Goes Here",
                  style: TextStyle(fontSize: 24),
                ),
                Icon(
                  Icons.search_outlined,
                  size: 38,
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.only(top: height * 0.01),
                  padding: EdgeInsets.only(
                      left: width * 0.03,
                      right: width * 0.03,
                      bottom: height * 0.02),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.red[700],
                  ),
                  child: Column(
                    children: [
                      Image(
                        image: AssetImage("assets/recipes/ful.jpg"),
                        height: height * 0.3,
                        width: width * 0.5,
                      ),
                      Text(
                        "The traditional Egyptian breakfast of dried fava beans is also the national dish, eaten at all times of the day, in the fields, in village mud-houses, and in the cities.\nRestaurants serve it as a mezze, and it is sold in the streets.\nVendors put the beans in large, round, narrow-necked vessels, which they bury through the night in the dying embers of the public baths.\nFul medames is pre-Ottoman and pre-Islamic.",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        "Ingredints:\n• 2 cups small Egyptian fava beans (ful medames), soaked overnight (and left unpeeled)\n• Salt\n• 1/3 cup chopped flat-leaf parsley\n• Extra-virgin olive oil\n• 3 lemons, quartered\n• Salt and pepper\n• 4-6 cloves garlic, crushed\n• Chili-pepper flakes\n• Cumin",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ],
                  ),
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
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                  icon: Icon(
                    Icons.home,
                    color: Colors.black,
                    size: 32,
                  ),
                ),
                Icon(
                  Icons.receipt_long,
                  color: Colors.black,
                  size: 32,
                ),
                Icon(
                  Icons.camera_alt,
                  color: Colors.black,
                  size: 32,
                ),
                Icon(
                  Icons.timer,
                  color: Colors.black,
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
                    color: Colors.black,
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
