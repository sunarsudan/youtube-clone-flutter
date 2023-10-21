import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;
  const Responsive(
      {super.key,
      required this.mobile,
      required this.tablet,
      required this.desktop});

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1200;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1200 &&
      MediaQuery.of(context).size.width > 650;

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= 650;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1100) {
          return desktop;
        } else if (constraints.maxWidth <= 650) {
          return mobile;
        } else {
          return tablet;
        }
      },
    );
  }
}
