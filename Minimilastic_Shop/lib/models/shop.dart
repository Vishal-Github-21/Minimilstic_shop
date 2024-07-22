// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/models/products.dart';

// class Shop extends ChangeNotifier {
//   //products for sale
//   final List<Products> _shop = [
//     Products(
//       name: 'Sunglasses',
//       price: 2500,
//       description: 'Stylish sunglasses to protect your eyes from the sun.',
//       // imagepath: '/lib/images/sunglasses.png'
//     ),
//     Products(
//       name: 'Wrist Watch',
//       price: 4500,
//       description: 'Elegant wrist watch with a leather strap.',
//       // imagepath: '/lib/images/watch.png'
//     ),
//     Products(
//       name: 'Backpack',
//       price: 3500,
//       description:
//           'Durable backpack with multiple compartments for all your essentials.',
//       // imagepath: '/lib/images/backpack.png'
//     ),
//     Products(
//       name: 'Sneakers',
//       price: 5000,
//       description: 'Comfortable and stylish sneakers for everyday wear.',
//       // imagepath: '/lib/images/sneakers.png'
//     ),
//     Products(
//       name: 'Headphones',
//       price: 3000,
//       description:
//           'Wireless headphones with excellent sound quality and battery life.',
//       // imagepath: '/lib/images/headphones.png'
//     ),
//   ];

//   //userchar
//   List<Products> _chart = [];

//   //getproduct list
//   List<Products> get shop => _shop;

//   //getuserchart
//   List<Products> get chart => _chart;

//   //add item to chart
//   void addToChart(Products item) {
//     _chart.add(item);
//     notifyListeners();
//   }

//   //remove item to chart
//   void removeItem(Products item) {
//     _chart.remove(item);
//     notifyListeners();
//   }

//   //total item cost in chart
//    double get total {
//     return _chart.fold(0, (sum, item) => sum + item.price);
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/products.dart';

class Shop extends ChangeNotifier {
  // Products for sale
  final List<Products> _shop = [
    Products(
      name: 'Sunglasses',
      price: 2500,
      description: 'Stylish sunglasses to protect your eyes from the sun.',
      imagepath:'assests/sunglass.jpeg'
    ),
    Products(
      name: 'Wrist Watch',
      price: 4500,
      description: 'Elegant wrist watch with a leather strap.',
     imagepath: 'assests/hoodie.jpeg'
    ),
    Products(
      name: 'Backpack',
      price: 3500,
      description: 'Durable backpack with multiple compartments for all your essentials.',
      imagepath: 'assests/backpack.jpeg'
    ),
    Products(
      name: 'Sneakers',
      price: 5000,
      description: 'Comfortable and stylish sneakers for everyday wear.',
     imagepath: 'assests/snearkers.jpeg'
    ),
    Products(
      name: 'Headphones',
      price: 3000,
      description: 'Wireless headphones with excellent sound quality and battery life.',
     imagepath: 'assests/headphones.jpeg'
    ),
  ];

  // User cart
  List<Products> _chart = [];
  
  // Cached total value
  double _total = 0;

  // Get product list
  List<Products> get shop => _shop;

  // Get user cart
  List<Products> get chart => _chart;

  // Get total cost of items in cart
  double get total => _total;

  // Add item to cart
  void addToChart(Products item) {
    _chart.add(item);
    _total += item.price;
    notifyListeners();
  }

  // Remove item from cart
  void removeItem(Products item) {
    _chart.remove(item);
    _total -= item.price;
    notifyListeners();
  }
}
