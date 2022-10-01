import 'package:flutter/cupertino.dart';

class NavProvider with ChangeNotifier {
  int _index = 0;

  int get index => _index;

  void set(int index) {
    _index = index;
    notifyListeners();
  }
}
