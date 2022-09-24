import 'package:flutter/cupertino.dart';

class Counter extends ChangeNotifier {
  int _index1 = 0;
  int _index2 = 0;
  int _index3 = 0;
  int get index1 => _index1;
  int get index2 => _index2;
  int get index3 => _index3;

  void increment1() {
    _index1++;
    notifyListeners();
  }
  void increment2() {
    _index2++;
    notifyListeners();
  }
  void increment3() {
    _index3++;
    notifyListeners();
  }
}
