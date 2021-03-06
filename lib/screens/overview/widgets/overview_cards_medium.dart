import 'package:flutter/material.dart';

import 'info_card.dart';

class OverviewCardsMedium extends StatelessWidget {
  const OverviewCardsMedium({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            InfoCard(
              title: 'Rides in Progress',
              value: '7',
              isActive: false,
              topColor: Colors.orange,
              onTap: () {},
            ),
            SizedBox(width: _width / 64),
            InfoCard(
              title: 'Packages delivered',
              value: '17',
              isActive: false,
              topColor: Colors.lightGreen,
              onTap: () {},
            ),
          ],
        ),
        SizedBox(height: _width / 64),
        Row(
          children: [
            InfoCard(
              title: 'Cancelled delivery',
              value: '3',
              isActive: false,
              topColor: Colors.redAccent,
              onTap: () {},
            ),
            SizedBox(width: _width / 64),
            InfoCard(
              title: 'Scheduled deliveries',
              value: '3',
              isActive: false,
              onTap: () {},
            ),
          ],
        ),
      ],
    );
  }
}
