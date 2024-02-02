import 'package:decor_app/models/categories.dart';
import 'package:decor_app/utils/color_constants.dart';
import 'package:decor_app/utils/text_styles.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 25, left: 15),
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          Categories category = categories[index];
          return InkWell(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 7),
              margin: const EdgeInsets.symmetric(horizontal: 7),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: ColorConstants.grey,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                category.name,
                style: TextStyles.textStyleFont15Weight500
                    .copyWith(color: ColorConstants.grey),
              ),
            ),
          );
        },
      ),
    );
  }
}
