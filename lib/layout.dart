import 'package:flutter/material.dart';
import 'package:flutter_responsive_app/widgets/side_menu.dart';

import './widgets/navigation_bar.dart';
import './helpers/responsive_helper.dart';
import './screens/desktop_screen.dart';
import './screens/mobile_screen.dart';
import './screens/tablet_screen.dart';

class Layout extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  Layout({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      extendBodyBehindAppBar: true,
      drawer: const Drawer(child: SideMenu()),
      appBar: navigationBar(context, _scaffoldKey),
      body: const ResponsiveHelper(
        largeScreen: DesktopScreen(),
        mediumScreen: TabletScreen(),
        smallScreen: MobileScreen(),
      ),
    );
  }
}
