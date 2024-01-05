import 'package:apotech_app/data/models/product/product.dart';
import 'package:flutter/material.dart';

class TransactionProvider extends ChangeNotifier {
  void updateQuantity(Product product, bool increase) {
    if (increase) {
      product.quantity = product.quantity! + 1;
    } else {
      if (product.quantity! > 1) {
        product.quantity = product.quantity! - 1;
      }
    }
    notifyListeners();
  }
}
