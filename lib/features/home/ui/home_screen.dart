import 'package:flutter/material.dart';
import 'package:flutter_advanced_course/core/helpers/spacing.dart';
import 'package:flutter_advanced_course/features/home/ui/widgets/home_top_bar.dart';
import 'package:flutter_advanced_course/features/home/ui/widgets/specializations_list/specializtions_bloc_builder.dart';

import 'widgets/doctor_speciality_see_all.dart';
import 'widgets/doctors_list/doctors_bloc_builder.dart';
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
            children: [
              HomeTopBar(),
              DoctorsBlueContainer(),
              verticalSpace(24),
              DoctorsSpecialtySeeAll(),
              verticalSpace(18),
              SpecializationsBlocBuilder(),
              verticalSpace(8),
              DoctorsBlocBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
