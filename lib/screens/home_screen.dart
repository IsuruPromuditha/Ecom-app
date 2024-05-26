

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ecommerce/constraints.dart';

import 'components/search_form.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {} ,
          icon: SvgPicture.asset("assets/icons/menu.svg") ,
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [SvgPicture.asset("assets/icons/Location.svg"),
          const SizedBox(width: defaultPadding / 2),
          Text(
            "15/2 New Texas",
            style: Theme.of(context).textTheme.titleSmall,
          ),
         ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon:  SvgPicture.asset("assets/icons/Notification.svg")),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Explore",
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(fontWeight: FontWeight.w500,color: Colors.black),
            ),
            const Text("best Outfits for you",
              style: TextStyle(fontSize: 18),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: defaultPadding),
              child: SearchForm(),
            ),
            Row(
              children: List.generate(
                5, (index) => CategoryCard(
                icon: "assets/icons/dress.svg",
                title: "Dress",
                press: () {},
               ),
              ),
            ),
          ],
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

