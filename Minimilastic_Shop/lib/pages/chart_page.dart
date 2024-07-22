// import 'package:flutter/material.dart';
// // import 'package:flutter_application_1/components/mybutton.dart';
// import 'package:flutter_application_1/models/products.dart';
// import 'package:flutter_application_1/models/shop.dart';
// import 'package:provider/provider.dart';

// class ChartPage extends StatelessWidget {
//   const ChartPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final cart = context.watch<Shop>().chart;

//     // Remove item from cart
//     void removeItemFromCart(BuildContext context, Products product) {
//       showDialog(
//         context: context,
//         builder: (context) => AlertDialog(
//           content: const Text("Remove product from cart?"),
//           actions: [
//             MaterialButton(
//               onPressed: () => Navigator.pop(context),
//               child: const Text("Cancel"),
//             ),
//             MaterialButton(
//               onPressed: () {
//                 Navigator.pop(context);
//                 context.read<Shop>().removeItem(product);
//               },
//               child: const Text("OK"),
//             )
//           ],
//         ),
//       );
//     }

//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         foregroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: const Text("Cart Page"),
//       ),
//       backgroundColor: Theme.of(context).colorScheme.primary,
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView.builder(
//                 itemCount: cart.length,
//                 itemBuilder: (context, index) {
//                   return Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(12),
//                       color: Colors.white,
//                     ),
//                     padding:
//                         const EdgeInsets.only(left: 12, right: 12, bottom: 12),
//                     margin:
//                         const EdgeInsets.only(bottom: 12, left: 12, right: 12),
//                     child: ListTile(
//                       leading: Image.asset(cart[index].imagepath),
//                       title: Text(cart[index].name),
//                       subtitle:
//                           Text("\$${cart[index].price.toStringAsFixed(2)}"),
//                       trailing: IconButton(
//                         icon: const Icon(Icons.remove),
//                         onPressed: () =>
//                             removeItemFromCart(context, cart[index]),
//                       ),
//                     ),
//                   );
//                 }),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(
//                   bottom: 25,
//                   left: 25,
//                   right: 25,
//                 ),
//                 child: Container(
//                   decoration: const BoxDecoration(
//                     color: Colors.white,
//                   ),
//                   height: 50,
//                   width: 200,
//                   child: Center(
//                     child: Consumer<Shop>(
//                       builder: (context, shop, child) {
//                         return Text(
//                           'Total: \$${shop.total.toStringAsFixed(2)}',
//                           style: const TextStyle(
//                             fontSize: 20,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         );
//                       },
//                     ),
//                   ),
//                 ),
//               ),
//               Padding(
//                   padding: const EdgeInsets.only(
//                     bottom: 25,
//                     left: 25,
//                     right: 25,
//                   ),
//                   child: Container(
//                     width: ,
//                     decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(12)),
//                     child: MaterialButton(
//                       child: Text("PAY"),
//                       onPressed: () {
//                         print("pay now");
//                       },
//                     ),
//                   )),
//             ],
//           ),
//           const SizedBox(
//             height: 20,
//           )
//         ],
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/products.dart';
import 'package:flutter_application_1/models/shop.dart';
import 'package:provider/provider.dart';

class ChartPage extends StatelessWidget {
  const ChartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = context.watch<Shop>().chart;

    // Remove item from cart
    void removeItemFromCart(BuildContext context, Products product) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          content: const Text("Remove product from cart?"),
          actions: [
            MaterialButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Cancel"),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.pop(context);
                context.read<Shop>().removeItem(product);
              },
              child: const Text("OK"),
            )
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Cart Page"),
      ),
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: cart.length,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    ),
                    padding:
                        const EdgeInsets.only(left: 12, right: 12, bottom: 12),
                    margin:
                        const EdgeInsets.only(bottom: 12, left: 12, right: 12),
                    child: ListTile(
                      leading: Image.asset(cart[index].imagepath),
                      title: Text(cart[index].name),
                      subtitle:
                          Text("\$${cart[index].price.toStringAsFixed(2)}"),
                      trailing: IconButton(
                        icon: const Icon(Icons.remove),
                        onPressed: () =>
                            removeItemFromCart(context, cart[index]),
                      ),
                    ),
                  );
                }),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                    bottom: 25,
                    left: 25,
                    right: 12.5,
                  ),
                  child: Container(
                    decoration:BoxDecoration(
                      color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                    ),
                    height: 50,
                    child: Center(
                      child: Consumer<Shop>(
                        builder: (context, shop, child) {
                          return Text(
                            'Total: \$${shop.total.toStringAsFixed(2)}',
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                    bottom: 25,
                    left: 12.5,
                    right: 25,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: MaterialButton(
                      child: const Text("PAY"),
                      onPressed: () {
                        print("pay now");
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
