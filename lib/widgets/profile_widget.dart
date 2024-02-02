import 'package:decor_app/utils/color_constants.dart';
import 'package:decor_app/utils/image_constants.dart';
import 'package:decor_app/utils/string_constants.dart';
import 'package:decor_app/utils/text_styles.dart';
import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        clipBehavior: Clip.none,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: Image.asset(ImageConstants.profile),
      ),
      title: Text(
        StringConstants.goodEvening,
        style: TextStyles.textStyleFont15Weight500
            .copyWith(color: ColorConstants.grey),
      ),
      subtitle: Text(
        StringConstants.name,
        style: TextStyles.textStyleFont17Weight700.copyWith(fontSize: 20),
      ),
      trailing: const Icon(
        Icons.search,
        size: 30,
      ),
    );
  }
}
