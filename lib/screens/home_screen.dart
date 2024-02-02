import 'package:decor_app/utils/color_constants.dart';
import 'package:decor_app/widgets/bottom_navigation_widget.dart';
import 'package:decor_app/widgets/card_widget.dart';
import 'package:decor_app/widgets/category_widget.dart';
import 'package:decor_app/widgets/gridview_widget.dart';
import 'package:decor_app/widgets/profile_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: buildBody(),
      bottomNavigationBar: const BottomNavigationWidget(),
    );
  }

  Widget buildBody() {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 30),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              ColorConstants.backgroundColorc2ccc9,
              ColorConstants.backgroundColordee8e0
            ],
          ),
        ),
        child: const Column(
          children: [
            ProfileWidget(),
            SizedBox(
              height: 20,
            ),
            //Card
            CardWidget(),
            // categories
            CategoryWidget(),
            //Plants
            GridviewWidget(),
          ],
        ),
      ),
    );
  }
}
