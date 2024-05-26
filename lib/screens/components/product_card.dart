import 'package:ecommerce/screens/components/section_title.dart';
import 'package:flutter/material.dart';

import '../../constraints.dart';
import '../../models/Product.dart';

class NewArrival extends StatelessWidget {
  const NewArrival({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: "New Arrival",
          pressSeeAll: () { },
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(demo_product.length,
                  (index) => Padding(
                padding: const EdgeInsets.only(left: defaultPadding),
                child: ProductCard(
                  image: demo_product[index].image ,
                  title: demo_product[index].title,
                  price: demo_product[index].price,
                  bgColor: demo_product[index].bgColor,
                  press: () {},
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.image,
    required this.title,
    required this.bgColor,
    required this.price,
    required this.press,
  });

  final String image, title;
  final Color bgColor;
  final int price;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: 154,
        padding: const EdgeInsets.all(defaultPadding/2),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)
          ),
        ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration:  BoxDecoration(
                color: bgColor,
                borderRadius:
                const BorderRadius.all(Radius.circular(defaultBorderRadius)),
              ),
              child: Image.asset(
                image,
                height: 132,
              ),
            ),
            const SizedBox(height: defaultPadding/2,),
            Row(
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(color: Colors.black),
                  ),
                ),
                const SizedBox(width: defaultPadding/4,),
                Text("\$$price" ,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}