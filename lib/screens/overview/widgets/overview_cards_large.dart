import 'package:flutter/material.dart';

import 'info_card.dart';

class OverviewCardsLarge extends StatelessWidget {
  const OverviewCardsLarge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Row(
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
        SizedBox(width: _width / 64),
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
    );
  }
}
