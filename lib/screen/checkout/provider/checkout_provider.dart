import 'package:flutter/material.dart';

class CheckoutProvider extends ChangeNotifier {
  int _selectedAddress = 0;
  int get selectedAddress => _selectedAddress;

  int _selectedPayment = 0;
  int get selectedPayment => _selectedPayment;

  void setCurrentAddress(int index) {
    _selectedAddress = index;
    notifyListeners();
  }

  void setCurrentPayment(int index) {
    _selectedPayment = index;
    notifyListeners();
  }
}