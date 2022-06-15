import 'package:flutter/material.dart';
import 'package:flutter_responsive_app/screens/overview/widgets/info_card_small.dart';

class OverviewCardsSmall extends StatelessWidget {
  const OverviewCardsSmall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 400,
      child: Column(
        children: [
          InfoCardSmall(
            title: 'Rides in Progress',
            value: '7',
            isActive: false,
            onTap: () {},
          ),
          SizedBox(height: _width / 64),
          InfoCardSmall(
            title: 'Packages delivered',
            value: '17',
            isActive: false,
            onTap: () {},
          ),
          SizedBox(height: _width / 64),
          InfoCardSmall(
            title: 'Cancelled delivery',
            value: '3',
            isActive: false,
            onTap: () {},
          ),
          SizedBox(height: _width / 64),
          InfoCardSmall(
            title: 'Scheduled deliveries',
            value: '3',
            isActive: false,
            onTap: () {},
          ),
          SizedBox(height: _width / 64),
        ],
      ),
    );
  }
}
