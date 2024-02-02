import 'package:decor_app/models/plants.dart';
import 'package:decor_app/routing/routes.dart';
import 'package:decor_app/utils/color_constants.dart';
import 'package:decor_app/utils/string_constants.dart';
import 'package:decor_app/utils/text_styles.dart';
import 'package:flutter/material.dart';

class DetailViewScreen extends StatelessWidget {
  const DetailViewScreen({super.key, required this.arguments});
  final Plants arguments;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 40),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                ColorConstants.backgroundColorc2ccc9,
                ColorConstants.backgroundColordee8e0
              ],
            ),
          ),
          child: Column(
            children: [
              ListTile(
                leading: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, Routes.homeScreen);
                  },
                  child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border:
                              Border.all(width: 1, color: ColorConstants.grey)),
                      child: const Icon(Icons.arrow_back)),
                ),
                title: Align(
                  alignment: Alignment.center,
                  child: Text(
                    StringConstants.details,
                    style: TextStyles.textStyleFont17Weight700
                        .copyWith(fontSize: 20),
                  ),
                ),
                trailing: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border:
                            Border.all(width: 1, color: ColorConstants.grey)),
                    child: const Icon(Icons.favorite_border_outlined)),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                height: 400,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    color: ColorConstants.imageBackground),
                child: Stack(
                  children: [
                    Positioned(
                      top: 30,
                      right: 120,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        height: 350,
                        width: 350,
                        child: Image.asset(
                          arguments.image,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 100,
                      right: 70,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            arguments.price,
                            style: TextStyles.textStyleFont17Weight700.copyWith(fontSize: 40),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 60,
                      right: 50,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            StringConstants.temperature,
                            style: TextStyles.textStyleFont15Weight400,
                          ),
                          Text(
                            arguments.temperature,
                            style: TextStyles.textStyleFont17Weight700,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            StringConstants.height,
                            style: TextStyles.textStyleFont15Weight400,
                          ),
                          Text(
                            arguments.height,
                            style: TextStyles.textStyleFont17Weight700,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          arguments.name,
                          style: TextStyles.textStyleFont17Weight700
                              .copyWith(fontSize: 28),
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              size: 15,
                            ),
                            Text(
                              arguments.rating,
                              style: TextStyles.textStyleFont17Weight700,
                            ),
                            Text(" (${arguments.review} Reviews)")
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      arguments.description,
                      style: TextStyles.textStyleFont15Weight400,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              ColorConstants.backgroundColorc2ccc9,
              ColorConstants.backgroundColordee8e0
            ],
          ),
        ),
        child: Container(
          height: 70,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
              color: ColorConstants.imageBackground,
              border: Border.all(width: 1, color: ColorConstants.black),
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(60), topRight: Radius.circular(60))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(StringConstants.addToCart,
                  style: TextStyles.textStyleFont15Weight500
                      .copyWith(fontSize: 24)),
              const Icon(Icons.arrow_forward_outlined)
            ],
          ),
        ),
      ),
    );
  }
}
