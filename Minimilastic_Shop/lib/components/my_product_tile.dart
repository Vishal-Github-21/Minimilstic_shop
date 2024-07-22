import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/models/products.dart';
import 'package:flutter_application_1/models/shop.dart';
import 'package:provider/provider.dart';

class MyProductTile extends StatelessWidget {
  final Products product;
  const MyProductTile({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    //function to add item to chart
    void additemTochar(BuildContext context) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          content: const Text("Add this to your chart?"),
          actions: [
            MaterialButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("cancel"),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.pop(context);
                context.read<Shop>().addToChart(product);
              },
              child: const Text("ok"),
            )
          ],
        ),
      );
    }

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(25),
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    height: double.infinity,
                    width: double.infinity,
                    child: Image.asset(product.imagepath)),
              ),

              const SizedBox(
                height: 25,
              ),
              //product name
              Text(
                product.name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),

              const SizedBox(
                height: 15,
              ),

              //product description
              Text(
                product.description,
                style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             
              Text("\$${product.price.toStringAsFixed(2)}"),
              IconButton(
                  onPressed: () => additemTochar(context),
                  icon: Icon(Icons.add))
            ],
          )
        ],
      ),
    );
  }
}
