import 'package:flutter/material.dart';

class ProductProvider extends ChangeNotifier {
  int _currentIndex = 0;
  int get currentIndex => _currentIndex;

  int _currentSelected = 0;
  int get currentSelected => _currentSelected;

  PageController? _onBoaringController;
  PageController? get onBoaringController => _onBoaringController;

  void initial(){
    _onBoaringController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _onBoaringController?.dispose();
    super.dispose();
  }

  void setCurrentIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  void setCurrentSelected(int index) {
    _currentSelected = index;
    notifyListeners();
  }
}