import 'package:flutter/material.dart';
import 'package:flutter_responsive_app/routing/routes.dart';
import 'package:flutter_responsive_app/screens/drivers/drivers.dart';

import '../screens/clients/clients.dart';
import '../screens/overview/overview.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case OverviewPageRoute:
      return _customRoute(const Overview());
    case DriversPageRoute:
      return _customRoute(const Drivers());
    case ClientsPageRoute:
      return _customRoute(const Clients());
    default:
      return _customRoute(const Overview());
  }
}

PageRoute _customRoute(Widget child) {
  return MaterialPageRoute(builder: (ctx) => child);
}
