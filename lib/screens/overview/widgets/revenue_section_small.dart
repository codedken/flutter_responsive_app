import 'package:flutter/material.dart';
import 'package:flutter_responsive_app/constants/styles.dart';
import 'package:flutter_responsive_app/screens/overview/widgets/bar_chart.dart';
import 'package:flutter_responsive_app/screens/overview/widgets/revenue_info.dart';
import 'package:flutter_responsive_app/widgets/custom_text.dart';

class RevenueSectionSmall extends StatelessWidget {
  const RevenueSectionSmall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      margin: const EdgeInsets.symmetric(vertical: 30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 6),
            color: kLightGrey.withOpacity(.1),
            blurRadius: 12,
          ),
        ],
        border: Border.all(
          color: kLightGrey,
          width: .5,
        ),
      ),
      child: Column(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const CustomText(
                text: 'Revenue Chart',
                size: 20,
                weight: FontWeight.bold,
                color: kLightGrey,
              ),
              SizedBox(
                width: double.infinity,
                height: 200,
                child: SimpleBarChart.withSampleData(),
              )
            ],
          ),
          const SizedBox(height: 30.0),
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: const [
                  RevenueInfo(
                    title: 'Today\'s revenue',
                    amount: '23',
                  ),
                  RevenueInfo(
                    title: 'Last 7 days',
                    amount: '150',
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                children: const [
                  RevenueInfo(
                    title: 'Last 30 days',
                    amount: '1,203',
                  ),
                  RevenueInfo(
                    title: 'Last 12 months',
                    amount: '3,234',
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
