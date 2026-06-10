import 'package:flutter/material.dart';
import '../core/responsive.dart';
import 'mobile_body.dart';
import 'tablet_body.dart';
import 'desktop_body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobileBody: MobileBody(),
      tabletBody: TabletBody(),
      desktopBody: DesktopBody(),
    );
  }
}