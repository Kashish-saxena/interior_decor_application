import 'package:decor_app/models/plants.dart';
import 'package:decor_app/routing/routes.dart';
import 'package:decor_app/utils/color_constants.dart';
import 'package:decor_app/utils/string_constants.dart';
import 'package:decor_app/utils/text_styles.dart';
import 'package:flutter/material.dart';

class GridviewWidget extends StatelessWidget {
  const GridviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: GridView.builder(
        shrinkWrap: true,
        itemCount: plants.length,
        physics: const PageScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 310,
            mainAxisSpacing: 15,
            crossAxisSpacing: 15),
        itemBuilder: (context, index) {
          Plants plant = plants[index];
          return InkWell(
            onTap: () {
              Navigator.pushNamed(
                context,
                Routes.detailView,
                arguments: plant,
              );
            },
            child: Container(
              padding: const EdgeInsets.only(bottom: 10),
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(65),
                color: ColorConstants.imageBackground,
              ),
              child: Column(
                children: [
                  Image.asset(
                    plant.image,
                    height: 200,
                    width: 200,
                    fit: BoxFit.fill,
                  ),
                  Text(
                    plant.name,
                    style: TextStyles.textStyleFont15Weight500
                        .copyWith(fontSize: 17, color: ColorConstants.grey),
                  ),
                  Text(plant.price, style: TextStyles.textStyleFont17Weight700),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        padding: const EdgeInsetsDirectional.symmetric(
                            horizontal: 15),
                        side: const BorderSide(color: Colors.green, width: 2),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(60))),
                    onPressed: () {},
                    child: const Text(
                      StringConstants.addToCart,
                      style: TextStyles.textStyleFont15Weight500,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
