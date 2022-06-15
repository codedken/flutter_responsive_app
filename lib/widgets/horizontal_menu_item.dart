import 'package:flutter/material.dart';
import 'package:flutter_responsive_app/constants/styles.dart';
import 'package:flutter_responsive_app/widgets/custom_text.dart';
import 'package:get/get.dart';
import '../constants/controllers.dart';

class HorizontalMenuItem extends StatelessWidget {
  final String itemName;
  final VoidCallback onTap;
  const HorizontalMenuItem({
    Key? key,
    required this.itemName,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
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
            children: <Widget>[
              Visibility(
                visible: menuController.isHovered(itemName) ||
                    menuController.isActiveItem(itemName),
                child: Container(
                  width: 6,
                  height: 40,
                  color: kDark,
                ),
                maintainSize: true,
                maintainAnimation: true,
                maintainState: true,
              ),
              SizedBox(width: _width / 80),
              Padding(
                padding: const EdgeInsets.all(16),
                child: menuController.returnIconFor(itemName),
              ),
              if (!menuController.isActiveItem(itemName))
                Flexible(
                  child: CustomText(
                    text: itemName,
                    color:
                        menuController.isHovered(itemName) ? kDark : kLightGrey,
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
      ),
    );
  }
}
