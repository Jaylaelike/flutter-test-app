import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';

class AppController extends GetxController {
//Index of the current pages
  RxInt _currentIndex = 0.obs;
  getCurrentNavIndex() => _currentIndex.value;
  int setCurrentNavIndex(int value) {
    _currentIndex.value = value;
    update();
    return value;
  }
}
