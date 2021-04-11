import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/constants.dart';

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
