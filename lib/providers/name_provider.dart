import 'package:flutter/cupertino.dart';

class NameProvider extends ChangeNotifier {
  String name = "Default name";


  void changeName({required String newName}) {
    name = newName;
    notifyListeners();
  }
}
