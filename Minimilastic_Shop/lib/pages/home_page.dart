import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/my_drawer.dart';
import 'package:flutter_application_1/components/my_product_tile.dart';
import 'package:flutter_application_1/models/shop.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // access provider
    final products = context.watch<Shop>().shop;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Shop page"),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            tooltip: 'Open shopping cart',
            onPressed: () {
              Navigator.pushNamed(context, "/chart_page");
            },
          )
        ],
      ),
      drawer: const MyDrawer(),
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),

          Text(
            "Pick from a selected list of premium products!",
            style: TextStyle(
              color: Theme.of(context).colorScheme.inversePrimary,
              fontSize: 15,
            ),
          ),

          //products

          SizedBox(
            height: 550,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: products.length,
                padding: EdgeInsets.all(15),
                itemBuilder: (context, index) {
                  //get individual product from the shop
                  final product = products[index];

                  return MyProductTile(product: product);
                }),
          ),
        ],
      ),
    );
  }
}
