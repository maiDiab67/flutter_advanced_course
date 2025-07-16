import 'package:flutter/material.dart';
import 'package:flutter_advanced_course/core/theming/styles.dart';

class DoctorsSpecialtySeeAll extends StatelessWidget {
  const DoctorsSpecialtySeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Doctors Specialty', style: TextStyles.font18DarkBlueBold),
        Spacer(),
        Text(
          'See All',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}
