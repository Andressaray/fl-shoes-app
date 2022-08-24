import 'package:flutter/material.dart';

class Shoe with ChangeNotifier {
  double _size = 0;
  String _color = 'black';
  double _price = 0;

  set changeSize(double newSize) {
    _size = newSize;
    notifyListeners();
  }

  set changeColor(String newColor) {
    _color = newColor;
    notifyListeners();
  }

  set changePrice(double newPrice) {
    _price = newPrice;
  }

  String get color {
    return _color;
  }

  double get size {
    return _size;
  }

  double get price {
    return _price;
  }
}
