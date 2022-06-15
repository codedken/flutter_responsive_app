import 'package:flutter/material.dart';
import 'package:flutter_responsive_app/constants/controllers.dart';
import 'package:flutter_responsive_app/routing/router.dart';
import 'package:flutter_responsive_app/routing/routes.dart';

Navigator localNavigator() => Navigator(
      key: navigationController.navigatorKey,
      initialRoute: OverviewPageRoute,
      onGenerateRoute: generateRoute,
    );
