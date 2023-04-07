import 'package:flutter/foundation.dart';

class BottomNavigationProvider with ChangeNotifier {
  int selectedIndex = 0;

  void changeIndex(int index) {
    selectedIndex = index;
    notifyListeners();
  }
}