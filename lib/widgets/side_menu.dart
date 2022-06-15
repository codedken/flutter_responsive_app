import 'package:flutter/material.dart';
import 'package:flutter_responsive_app/constants/controllers.dart';
import 'package:flutter_responsive_app/constants/styles.dart';
import 'package:flutter_responsive_app/helpers/responsive_helper.dart';
import 'package:flutter_responsive_app/routing/routes.dart';
import 'package:flutter_responsive_app/widgets/custom_text.dart';
import 'package:get/get.dart';

import 'side_menu_items.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
      color: kLight,
      child: ListView(
        children: [
          if (ResponsiveHelper.isMobile(context))
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: _width / 48,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: Image.asset('assets/icons/logo.png'),
                    ),
                    const Flexible(
                      child: CustomText(
                        text: 'Dash',
                        size: 20,
                        weight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: _width / 48,
                    )
                  ],
                ),
              ],
            ),
          Divider(color: kLightGrey.withOpacity(.1)),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: menuItems
                .map((item) => SideMenuItem(
                      itemName:
                          item == AuthenticationPageRoute ? 'Log Out' : item,
                      onTap: () {
                        if (item == AuthenticationPageRoute) {
                          // TODO::  go to authentication page
                        }
                        if (!menuController.isActiveItem(item)) {
                          menuController.changeActiveItem(item);
                          navigationController.goTo(item);
                          if (ResponsiveHelper.isMobile(context)) {
                            Get.back();
                          }
                        }
                      },
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
