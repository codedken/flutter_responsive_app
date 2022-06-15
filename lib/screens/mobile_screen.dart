import 'package:flutter/material.dart';
import 'package:flutter_responsive_app/widgets/navigation.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: localNavigator(),
        )
      ],
    );
  }
}
