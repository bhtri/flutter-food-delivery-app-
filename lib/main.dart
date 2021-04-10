import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/constants.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food App',
      theme: ThemeData(
        fontFamily: "Poppins",
        scaffoldBackgroundColor: kWhiteColor,
        primaryColor: kPrimaryColor,
        textTheme: TextTheme(
          headline5: TextStyle(fontWeight: FontWeight.bold),
          headline6: TextStyle(fontWeight: FontWeight.bold),
          button: TextStyle(fontWeight: FontWeight.bold),
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
          Container(
            margin: EdgeInsets.only(left: 20.0),
            height: 400,
            width: 270,
            child: Stack(
              children: [
                // Big light background
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                    height: 300,
                    width: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(34.0),
                      color: kPrimaryColor.withOpacity(.06),
                    ),
                  ),
                ),
                // Rounded background
                Positioned(
                  top: 18,
                  left: 18,
                  child: Container(
                    height: 181,
                    width: 181,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: kPrimaryColor.withOpacity(.15),
                    ),
                  ),
                ),
                // Food image
                Positioned(
                  top: 0,
                  left: -50,
                  child: Container(
                    height: 184.0,
                    width: 276.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/image_1.png'),
                      ),
                    ),
                  ),
                ),
                // Price
                Positioned(
                  right: 20,
                  top: 80,
                  child: Text(
                    '\$20',
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        .copyWith(color: kPrimaryColor),
                  ),
                ),
                Positioned(
                  top: 201,
                  left: 40,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Vegan salad bowl',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      Text(
                        'Vegan salad bowl',
                        style: TextStyle(
                          color: kTextColor.withOpacity(.4),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryTitle extends StatelessWidget {
  final String title;
  final bool active;

  const CategoryTitle({
    Key key,
    this.title,
    this.active = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 30.0),
      child: Text(
        title,
        style: Theme.of(context).textTheme.button.copyWith(
            color: active ? kPrimaryColor : kTextColor.withOpacity(.4)),
      ),
    );
  }
}
