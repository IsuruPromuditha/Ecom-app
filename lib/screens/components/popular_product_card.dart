import 'package:ecommerce/screens/components/product_card.dart';
import 'package:ecommerce/screens/components/section_title.dart';
import 'package:flutter/material.dart';

import '../../constraints.dart';
import '../../models/Product.dart';

class Popular extends StatelessWidget {
  const Popular({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: "Popular",
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