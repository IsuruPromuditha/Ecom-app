
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ecommerce/constraints.dart';

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
              icon: SvgPicture.asset("assets/icons/Notification.svg")),
        ],
      ),
    );
  }
}
