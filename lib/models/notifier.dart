import 'package:flutter/material.dart';

class ChangesData extends ChangeNotifier {
  String helloText = 'Whats inside my text field?';

  void changeText(newText) {
    helloText = newText;
    notifyListeners();
  }
}
