import 'package:flutter/material.dart';

class ShoppingCart with ChangeNotifier {
  final List<String> _shoppingCart = ['Shirt', 'Shoose', 'Pants'];

  int get count => _shoppingCart.length;
  List<String> get cart => _shoppingCart;

  void addItem(String item) {
    _shoppingCart.add(item);
    notifyListeners();
  }
}
