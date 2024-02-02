import 'package:decor_app/utils/color_constants.dart';
import 'package:flutter/material.dart';

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                ColorConstants.backgroundColorc2ccc9,
                ColorConstants.backgroundColordee8e0
              ],
            ),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(60), topRight: Radius.circular(60))),
        child: Container(
          height: 70,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
              color: ColorConstants.imageBackground,
              border: Border.all(width: 1, color: ColorConstants.black),
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(60), topRight: Radius.circular(60))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                enableFeedback: false,
                onPressed: () {},
                icon: const Icon(
                  Icons.home_rounded,
                  size: 25,
                ),
              ),
              IconButton(
                enableFeedback: false,
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_border,
                  size: 25,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                decoration: const BoxDecoration(
                  color: ColorConstants.black,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  enableFeedback: false,
                  onPressed: () {},
                  icon: const Icon(
                    Icons.qr_code_scanner,
                    size: 25,
                    color: ColorConstants.white,
                  ),
                ),
              ),
              IconButton(
                enableFeedback: false,
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_cart_outlined,
                  size: 25,
                ),
              ),
              IconButton(
                enableFeedback: false,
                onPressed: () {},
                icon: const Icon(
                  Icons.person_outline_outlined,
                  size: 25,
                ),
              ),
            ],
          ),
        ));
  }
}
