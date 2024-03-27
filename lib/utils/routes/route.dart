import 'package:get/get.dart';
import 'package:internship_task/screens/custom_navigation_bar.dart';
import 'package:internship_task/screens/homeScreen/screens/home_screen.dart';
import 'package:internship_task/screens/rideScreen/ride_screen.dart';

class TRoutes {
  TRoutes._();

  static const String _getInitial = "/";
  static const String _homeScreen = "/homeScreen";
  static const String _rideScreen = "/rideScreen";

  static String getInitial() => _getInitial;
  static String getHomeScreen() => _homeScreen;
  static String getRideScreen() => _rideScreen;

  static List<GetPage> routes = [
    //home screen
    GetPage(
      name: _getInitial,
      page: () => const CustomerNavigationMenu(),
      transition: Transition.leftToRight,
      transitionDuration: const Duration(microseconds: 10),
    ),
    //home screen
    GetPage(
      name: _homeScreen,
      page: () => const HomeScreen(),
      transition: Transition.leftToRight,
      transitionDuration: const Duration(microseconds: 10),
    ),
    //home screen
    GetPage(
      name: _rideScreen,
      page: () => const RideScreen(),
      transition: Transition.leftToRight,
      transitionDuration: const Duration(microseconds: 10),
    ),
  ];
}
