import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constraints.dart';
import '../../models/Category.dart';

class Categories extends StatelessWidget {
  const Categories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          demo_category.length,
              (index) => Padding(
            padding: const EdgeInsets.only(right: defaultPadding),
            child: CategoryCard(
              icon: demo_category[index].icon,
              title: demo_category[index].title,
              press: () {},
            ),
          ),
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.icon,
    required this.title,
    required this.press,
  });

  final String icon, title;
  final VoidCallback press ;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: press ,
      style: OutlinedButton.styleFrom(
        shape:const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
              Radius.circular(defaultBorderRadius)),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: defaultPadding / 4,
            vertical: defaultPadding / 2),
        child: Column(
          children: [
            SvgPicture.asset(icon),
            const SizedBox(height: defaultPadding/2),
            Text(
              title,
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ],
        ),
      ),
    );
  }
}