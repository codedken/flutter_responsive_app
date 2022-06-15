import 'package:flutter/material.dart';
import 'package:flutter_responsive_app/constants/controllers.dart';
import 'package:flutter_responsive_app/widgets/custom_text.dart';
import 'package:get/get.dart';

import '../../helpers/responsive_helper.dart';

class Drivers extends StatelessWidget {
  const Drivers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () => Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: ResponsiveHelper.isMobile(context) ? 56 : 6,
                ),
                child: CustomText(
                  text: menuController.activeItem.value,
                  size: 24,
                  weight: FontWeight.bold,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
