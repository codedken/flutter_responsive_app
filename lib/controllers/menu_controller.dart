import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/styles.dart';
import '../routing/routes.dart';

class MenuController extends GetxController {
  static MenuController instance = Get.find();

  var activeItem = OverviewPageRoute.obs;
  var hoveredItem = ''.obs;

  changeActiveItem(String itemName) => activeItem.value = itemName;

  changeHoveredItem(String itemName) {
    if (!isActiveItem(itemName)) hoveredItem.value = itemName;
  }

  bool isActiveItem(String itemName) => activeItem.value == itemName;
  bool isHovered(String itemName) => hoveredItem.value == itemName;

  Widget returnIconFor(String itemName) {
    switch (itemName) {
      case OverviewPageRoute:
        return _customIcon(itemName, Icons.trending_up);
      case DriversPageRoute:
        return _customIcon(itemName, Icons.drive_eta);
      case ClientsPageRoute:
        return _customIcon(itemName, Icons.people_alt_outlined);
      case AuthenticationPageRoute:
        return _customIcon(itemName, Icons.exit_to_app);
      default:
        return _customIcon(itemName, Icons.exit_to_app);
    }
  }

  Widget _customIcon(String itemName, IconData icon) {
    if (isActiveItem(itemName)) return Icon(icon, size: 22, color: kDark);
    return Icon(icon, color: isHovered(itemName) ? kDark : kLightGrey);
  }
}
