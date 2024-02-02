import 'package:decor_app/utils/color_constants.dart';
import 'package:decor_app/utils/image_constants.dart';
import 'package:decor_app/utils/string_constants.dart';
import 'package:decor_app/utils/text_styles.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              ColorConstants.cardBackground_1,
              ColorConstants.cardBackground_2
            ],
          ),
          borderRadius: BorderRadius.circular(60)),
      child: Stack(
        children: [
          Positioned(
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    StringConstants.discount,
                    style: TextStyles.textStyleFont15Weight500
                        .copyWith(fontSize: 17),
                  ),
                  Text(
                    StringConstants.upto,
                    style: TextStyles.textStyleFont17Weight700
                        .copyWith(fontSize: 36),
                  ),
                  Text(
                    StringConstants.date,
                    style: TextStyles.textStyleFont15Weight400
                        .copyWith(color: ColorConstants.grey, fontSize: 13),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: Image.asset(
              ImageConstants.plant,
              height: 200,
              width: 200,
            ),
          ),
        ],
      ),
    );
  }
}
