import 'package:flutter/material.dart';
import 'package:flutter_advanced_course/core/theming/styles.dart';
import 'package:flutter_advanced_course/features/onboarding/widgets/doc_logo_and_name.dart';
import 'package:flutter_advanced_course/features/onboarding/widgets/doctor_image_and_text.dart';
import 'package:flutter_advanced_course/features/onboarding/widgets/get_started_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            //30.h makes screen responsive as in screenUtils package
            padding: EdgeInsets.only(
                top: 30.h, bottom: 30.h, left: 20.h, right: 20.h),
            child: Column(
              children: [
                const DocLogoAndName(),
                SizedBox(height: 30.h),
                const DoctorImageAndText(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Column(
                    children: [
                      Text(
                        'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                        style: TextStyles.font13GrayRegular,
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                const GetStartedButton()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
