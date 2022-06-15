import 'package:flutter/material.dart';
import 'package:flutter_responsive_app/constants/controllers.dart';
import 'package:flutter_responsive_app/helpers/responsive_helper.dart';
import 'package:flutter_responsive_app/screens/overview/widgets/available_drivers.dart';
import 'package:flutter_responsive_app/screens/overview/widgets/overview_cards_large.dart';
import 'package:flutter_responsive_app/screens/overview/widgets/overview_cards_medium.dart';
import 'package:flutter_responsive_app/screens/overview/widgets/overview_cards_small.dart';
import 'package:flutter_responsive_app/screens/overview/widgets/revenue_section_large.dart';
import 'package:flutter_responsive_app/screens/overview/widgets/revenue_section_small.dart';
import 'package:flutter_responsive_app/widgets/custom_text.dart';
import 'package:get/get.dart';

class Overview extends StatelessWidget {
  const Overview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
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
          ),
          Expanded(
            child: ListView(
              children: [
                if (ResponsiveHelper.isDesktop(context))
                  const OverviewCardsLarge(),
                if (ResponsiveHelper.isTablet(context))
                  const OverviewCardsMedium(),
                if (ResponsiveHelper.isMobile(context))
                  const OverviewCardsSmall(),
                if (ResponsiveHelper.isMobile(context))
                  const RevenueSectionSmall(),
                if (ResponsiveHelper.isDesktop(context) ||
                    ResponsiveHelper.isTablet(context))
                  const RevenueSectionLarge(),
                const AvailableDrivers(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
