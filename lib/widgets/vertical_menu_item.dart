import 'package:flutter/material.dart';
import 'package:flutter_responsive_app/constants/controllers.dart';
import 'package:get/get.dart';

import '../constants/styles.dart';
import 'custom_text.dart';

class VerticalMenuItem extends StatelessWidget {
  final String itemName;
  final VoidCallback onTap;
  const VerticalMenuItem({
    Key? key,
    required this.itemName,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      onHover: (value) {
        value
            ? menuController.hoveredItem(itemName)
            : menuController.hoveredItem('not hovering');
      },
      child: Obx(
        () => Container(
          color: menuController.isHovered(itemName)
              ? kLightGrey.withOpacity(.1)
              : Colors.transparent,
          child: Row(
            children: [
              Visibility(
                visible: menuController.isHovered(itemName) ||
                    menuController.isActiveItem(itemName),
                child: Container(
                  width: 3,
                  height: 72,
                  color: kDark,
                ),
                maintainSize: true,
                maintainAnimation: true,
                maintainState: true,
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: menuController.returnIconFor(itemName),
                    ),
                    if (!menuController.isActiveItem(itemName))
                      Flexible(
                        child: CustomText(
                          text: itemName,
                          color: menuController.isHovered(itemName)
                              ? kDark
                              : kLightGrey,
                        ),
                      )
                    else
                      Flexible(
                        child: CustomText(
                          text: itemName,
                          color: kDark,
                          size: 18,
                          weight: FontWeight.bold,
                        ),
                      )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
