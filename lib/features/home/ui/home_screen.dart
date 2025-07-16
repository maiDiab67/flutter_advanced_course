import 'package:flutter/material.dart';
import 'package:flutter_advanced_course/features/home/ui/widgets/home_top_bar.dart';

import 'widgets/doctors_blue_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.fromLTRB(20.0, 16.0, 20.0, 28.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [HomeTopBar(), DoctorsBlueContainer()],
          ),
        ),
      ),
    );
  }
}
