import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/constants.dart';
import 'package:flutter_food_delivery_app/custom_pageroute.dart';
import 'package:flutter_food_delivery_app/details_screen.dart';
import 'package:flutter_food_delivery_app/widget/category_title.dart';
import 'package:flutter_food_delivery_app/widget/food_card.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food App',
      theme: ThemeData(
        scaffoldBackgroundColor: kWhiteColor,
        primaryColor: kPrimaryColor,
        textTheme: GoogleFonts.poppinsTextTheme(textTheme).copyWith(
          headline5: GoogleFonts.poppins(
              textStyle: TextStyle(fontWeight: FontWeight.bold)),
          headline6: GoogleFonts.poppins(
              textStyle: TextStyle(fontWeight: FontWeight.bold)),
          button: GoogleFonts.poppins(
              textStyle: TextStyle(fontWeight: FontWeight.bold)),
          bodyText1: GoogleFonts.poppins(
              textStyle: TextStyle(fontWeight: FontWeight.bold)),
        ),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        padding: EdgeInsets.all(10),
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: kPrimaryColor.withOpacity(.26),
        ),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: kPrimaryColor,
          ),
          child: SvgPicture.asset('assets/icons/plus.svg'),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0, top: 50.0),
            child: Align(
              alignment: Alignment.topRight,
              child: SvgPicture.asset(
                'assets/icons/menu.svg',
                height: 11,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "Simple way to find \nTasty food",
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CategoryTitle(title: 'All', active: true),
                CategoryTitle(title: 'Italian'),
                CategoryTitle(title: 'Asian'),
                CategoryTitle(title: 'Chinese'),
                CategoryTitle(title: 'Burgers'),
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
            padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(color: kBorderColor),
            ),
            child: SvgPicture.asset('assets/icons/search.svg'),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                FoodCard(
                  press: () {
                    Navigator.push(
                      context,
                      CustomMaterialPageRoute(
                        builder: (context) => DetailsScreen(),
                      ),
                    );
                  },
                  title: 'Vegan salad bowl',
                  image: 'assets/images/image_1.png',
                  calories: '420Kcal',
                  price: 20,
                  description:
                      'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.',
                ),
                FoodCard(
                  press: () {
                    Navigator.push(
                      context,
                      CustomMaterialPageRoute(
                        builder: (context) => DetailsScreen(),
                      ),
                    );
                  },
                  title: 'Vegan salad bowl',
                  image: 'assets/images/image_2.png',
                  calories: '420Kcal',
                  price: 20,
                  description:
                      'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.',
                ),
                FoodCard(
                  press: () {
                    Navigator.push(
                      context,
                      CustomMaterialPageRoute(
                        builder: (context) => DetailsScreen(),
                      ),
                    );
                  },
                  title: 'Vegan salad bowl',
                  image: 'assets/images/image_1.png',
                  calories: '420Kcal',
                  price: 20,
                  description:
                      'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.',
                ),
                SizedBox(width: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
