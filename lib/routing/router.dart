import 'package:decor_app/models/plants.dart';
import 'package:decor_app/routing/routes.dart';
import 'package:decor_app/screens/detail_view_screen.dart';
import 'package:decor_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

class PageRoutes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      case Routes.detailView:
        Plants plant = settings.arguments as Plants;
        return MaterialPageRoute(
            builder: (context) => DetailViewScreen(arguments:plant));
      default:
        return MaterialPageRoute(
            builder: (context) => const Text("No Page Found"));
    }
  }
}
