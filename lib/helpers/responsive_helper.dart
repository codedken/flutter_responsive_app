import 'package:flutter/material.dart';
import '../constants.dart';

class ResponsiveHelper extends StatelessWidget {
  final Widget largeScreen;
  final Widget? mediumScreen;
  final Widget? smallScreen;
  const ResponsiveHelper({
    Key? key,
    required this.largeScreen,
    this.mediumScreen,
    this.smallScreen,
  }) : super(key: key);

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= kLargeScreen;
  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < kLargeScreen &&
      MediaQuery.of(context).size.width >= kMediumScreen;
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < kMediumScreen &&
      MediaQuery.of(context).size.width >= kSmallScreen;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final width = constraints.maxWidth;
      if (width > kLargeScreen) {
        return largeScreen;
      } else if (width >= kMediumScreen) {
        return mediumScreen ?? largeScreen;
      } else {
        return smallScreen ?? largeScreen;
      }
    });
  }
}
