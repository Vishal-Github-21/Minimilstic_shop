import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/my_tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.primary,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //logo
          Column(
            children: [
              Container(
                // margin: EdgeInsets.all(50),
                padding: EdgeInsets.only(top: 100, bottom: 50),
                child: Icon(
                  Icons.shopping_bag,
                  size: 90,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),

              //shop tile
              MyTile(
                icon: Icons.home,
                text: "Shop",
                ontap: () {
                  Navigator.pop(context);
                },
              ),

              //cart tile
              MyTile(
                  icon: Icons.shopping_cart_checkout,
                  text: "Chart",
                  ontap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, "/chart_page");
                  }),
            ],
          ),
          //exit shop tile

          Padding(
            padding: const EdgeInsets.only(left: 10, bottom: 30.0),
            child: MyTile(
                icon: Icons.logout,
                text: "Exit",
                ontap: () {
                  Navigator.pushNamed(context, "/intro_page");
                }),
          )
        ],
      ),
    );
  }
}
