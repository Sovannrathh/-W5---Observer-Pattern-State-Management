import 'package:flutter/material.dart';

class ColorCounters extends ChangeNotifier {
  int redCounter = 0;
  int blueCounter = 0;

  void incrementRed() {
    redCounter++;
    notifyListeners();
  }

  void incrementBlue() {
    blueCounter++;
    notifyListeners();
  }
}
