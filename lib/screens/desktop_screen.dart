import 'package:flutter/material.dart';
import 'package:flutter_responsive_app/widgets/navigation.dart';
import 'package:flutter_responsive_app/widgets/side_menu.dart';

class DesktopScreen extends StatelessWidget {
  const DesktopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          flex: 1,
          child: SideMenu(),
        ),
        Expanded(
          flex: 5,
          child: localNavigator(),
        )
      ],
    );
  }
}
