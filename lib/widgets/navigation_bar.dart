import 'package:flutter/material.dart';
import 'package:flutter_responsive_app/constants/styles.dart';
import 'package:flutter_responsive_app/helpers/responsive_helper.dart';
import './custom_text.dart';

AppBar navigationBar(BuildContext context, GlobalKey<ScaffoldState> key) {
  return AppBar(
    elevation: 0,
    leading: !ResponsiveHelper.isMobile(context)
        ? Image.asset('assets/icons/logo.png')
        : IconButton(
            icon: const Icon(Icons.menu, color: kLightGrey),
            onPressed: () {
              key.currentState!.openDrawer();
            },
          ),
    title: Row(
      children: [
        const Visibility(
          child: CustomText(
            text: 'Dash',
            color: kLightGrey,
            size: 20,
            weight: FontWeight.bold,
          ),
        ),
        Expanded(
          child: Container(),
        ),
        IconButton(
          icon: Icon(
            Icons.settings,
            color: kDark.withOpacity(.7),
          ),
          onPressed: () {},
        ),
        Stack(
          children: [
            Icon(
              Icons.notifications,
              color: kDark.withOpacity(.7),
            ),
            Positioned(
              top: 1,
              right: 1,
              child: Container(
                width: 12,
                height: 12,
                decoration: BoxDecoration(
                  color: kActive,
                  border: Border.all(color: kLight, width: 2),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(width: 8.0),
        Container(width: 1, height: 22, color: kLightGrey),
        const SizedBox(width: 24.0),
        const CustomText(text: 'Chibuzor Ojukwu', color: kLightGrey),
        const SizedBox(width: 16.0),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white,
          ),
          child: Container(
            padding: const EdgeInsets.all(2),
            margin: const EdgeInsets.all(2),
            child: const CircleAvatar(
              backgroundColor: kLight,
              child: Icon(
                Icons.person_outlined,
                color: kDark,
              ),
            ),
          ),
        ),
      ],
    ),
    iconTheme: const IconThemeData(color: kDark),
    backgroundColor: Colors.transparent,
  );
}
