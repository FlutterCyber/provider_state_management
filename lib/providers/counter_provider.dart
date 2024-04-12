import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int number = 0;

  void increment() {
    number++;
    notifyListeners();
  }

  void decrement() {
    number--;
    notifyListeners();
  }
}
