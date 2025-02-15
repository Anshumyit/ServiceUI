import 'package:flutter/material.dart';
import 'package:get/get.dart';


// Controller for Bottom Navigation
class BottomNavController extends GetxController {
  var selectedIndex = 0.obs; // Observable index

  void changeIndex(int index) {
    selectedIndex.value = index;
  }
}