import 'package:flutter/material.dart';

import './product.dart';

class Products with ChangeNotifier {
  List<Product> _items = [
    Product(
      id: 'p1',
      title: 'Red Shirt',
      description: 'A red shirt - it is pretty red!',
      price: 29.00,
      imageUrl:
      'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
    ),
    Product(
      id: 'p2',
      title: 'Trousers',
      description: 'A nice pair of trousers.',
      price: 59.00,
      imageUrl:
      'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Trousers%2C_dress_%28AM_1960.022-8%29.jpg/512px-Trousers%2C_dress_%28AM_1960.022-8%29.jpg',
    ),
    Product(
      id: 'p3',
      title: 'Yellow Scarf',
      description: 'Warm and cozy - exactly what you need for the winter.',
      price: 19.00,
      imageUrl:
      'https://live.staticflickr.com/4043/4438260868_cc79b3369d_z.jpg',
    ),
    Product(
      id: 'p4',
      title: 'A Pan',
      description: 'Prepare any meal you want.',
      price: 49.00,
      imageUrl:
      'https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Cast-Iron-Pan.jpg/1024px-Cast-Iron-Pan.jpg',
    ),
    Product(
      id: 'p5',
      title: 'Blue Shirt',
      description: 'A blue shirt - Interview calling!',
      price: 22.00,
      imageUrl:
      'https://rukminim1.flixcart.com/image/880/1056/shirt/6/c/e/aad1003-hanu-l-original-imaeefunnra3ver8.jpeg?q=50',
    ),
    Product(
      id: 'p6',
      title: 'Red Gown',
      description: 'A red gown - All eyes on you!!',
      price: 99.00,
      imageUrl:
      'https://5.imimg.com/data5/VW/KI/MY-14079919/party-gown-500x500.jpg',
    ),
    Product(
      id: 'p7',
      title: 'Green Saree',
      description: 'Green Traditional Attire - For all Festivities!!!',
      price: 55.00,
      imageUrl:
      'https://ltfab.com/media/product/ce2/poly-silk-green-saree-lt1108-263.jpg',
    ),
    Product(
      id: 'p8',
      title: 'Jeans',
      description: 'Jeans -  Casual , Classy and Comfy !!!',
      price: 32.00,
      imageUrl:
      'https://assets.myntassets.com/h_1440,q_90,w_1080/v1/assets/images/productimage/2019/10/4/0c7d67fa-4d6c-4a7e-b30a-50573f8678c81570186118828-2.jpg',
    ),

  ];

  // var _showFavoritesOnly = false;

  List<Product> get items {
    // if (_showFavoritesOnly) {
    //   return _items.where((prodItem) => prodItem.isFavorite).toList();
    // }
    return [..._items];
  }

  List<Product> get favoriteItems {
    return _items.where((prodItem) => prodItem.isFavorite).toList();
  }

  Product findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }

  // void showFavoritesOnly() {
  //   _showFavoritesOnly = true;
  //   notifyListeners();
  // }

  // void showAll() {
  //   _showFavoritesOnly = false;
  //   notifyListeners();
  // }

  void addProduct() {
    // _items.add(value);
    notifyListeners();
  }
}
