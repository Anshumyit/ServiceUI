import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:urbanclap/view/booking.dart';
import 'package:urbanclap/view/homescreen.dart';
import 'package:urbanclap/view/setting.dart';
import 'package:urbanclap/view/wallat.dart';
import 'package:urbanclap/viewmodel/bottomnavitor.dart';

// Main Screen with Bottom Navigation
class MainScreen extends StatelessWidget {
  final BottomNavController bottomNavController = Get.put(BottomNavController());

  final List<Widget> pages = [
    Home(),
    Booking(),
    Wallet(),
    Setting(),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
      body: pages[bottomNavController.selectedIndex.value],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: bottomNavController.selectedIndex.value,
        onTap: bottomNavController.changeIndex,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: "Booking"),
          BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet), label: "Wallet"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting"),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        shape:CircleBorder(),
        backgroundColor: Colors.orange,
        child: Icon(Icons.add, color: Colors.white),
        onPressed: () {
          Get.snackbar("Action", "Floating Button Clicked");
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    ));
  }
}