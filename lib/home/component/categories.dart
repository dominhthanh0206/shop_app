import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_shop/constant.dart';
import 'package:test_shop/models/Category.dart';

class Categorise extends StatelessWidget {
  const Categorise({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 84,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => CategoryCard(
          icon: demo_categories[index].icon,
          title: demo_categories[index].title,
          press: () {},
        ),
        separatorBuilder: (context, index) => const SizedBox(
          width: defaultPadding,
        ),
        itemCount: demo_categories.length,
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard(
      {Key? key, required this.title, required this.icon, required this.press})
      : super(key: key);
  final String title, icon;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(defaultPadding)))),
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: defaultPadding / 2, horizontal: defaultPadding / 4),
            child: Column(children: [
              SvgPicture.asset(icon),
              const SizedBox(height: defaultBorderRadius/2,),
              Text(title, style: Theme.of(context).textTheme.subtitle2,)
            ],)
      ),
    );
  }
}





//       onPressed: press,
      // style: OutlinedButton.styleFrom(
      //     shape: const RoundedRectangleBorder(
      //         borderRadius: BorderRadius.all(Radius.circular(defaultPadding)))),
      // child: Padding(padding:
      //     const EdgeInsets.symmetric(vertical: defaultPadding / 2, horizontal: defaultPadding/4),
      //     child: Column(
      //       children: [
      //         SvgPicture.asset(icon),
      //         const SizedBox(height: defaultBorderRadius/2),
      //         Text(title,
      //         style: Theme.of(context).textTheme.subtitle2,)
      //       ],
      //     ),
      //   ),