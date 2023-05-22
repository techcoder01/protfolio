// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:protfolio/constants.dart';
import 'package:protfolio/models/Recommendation.dart';
import 'package:protfolio/screens/main/main_screen.dart';

import 'component/Recommendations.dart';
import 'component/highlights_info.dart';
import 'component/home_banner.dart';
import 'component/my_projects.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        HomeBanner(),
        HighLightsInfo(),
        MyProjects(),
        Recommendations()
      ],
    );
  }
}
