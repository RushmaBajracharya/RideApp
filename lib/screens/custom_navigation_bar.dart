import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internship_task/screens/homeScreen/screens/home_screen.dart';
import 'package:internship_task/screens/rideScreen/ride_screen.dart';
import 'package:internship_task/utils/constants/colors.dart';

class CustomerNavigationMenu extends StatelessWidget {
  const CustomerNavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Scaffold(
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          elevation: 2,
          currentIndex: controller.selectedIndex.value,
          onTap: (index) => controller.selectedIndex.value = index,
          backgroundColor: TColors.backgroundColor,
          selectedItemColor: TColors.primary,
          unselectedItemColor: Colors.black,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "HOME",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: "HISTORY",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.pedal_bike),
              label: "MY RIDES",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "SETTINGS",
            ),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class Iconsax {}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final screens = [
    const HomeScreen(),
    Container(color: Colors.red),
    const RideScreen(),
    Container(color: Colors.blue),
  ];
}
