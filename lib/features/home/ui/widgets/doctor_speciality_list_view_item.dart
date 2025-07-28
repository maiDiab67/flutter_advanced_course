import 'package:flutter/material.dart';
import 'package:flutter_advanced_course/features/home/data/models/specializations_response_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';

class DoctorSpecialtyListViewItem extends StatelessWidget {
  final int itemIndex;
  final SpecializationsData? specializationsData;
  const DoctorSpecialtyListViewItem({
    super.key,
    required this.itemIndex,
    this.specializationsData,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: itemIndex == 0 ? 0 : 24.w),

      child: Column(
        children: [
          CircleAvatar(
            radius: 28,
            backgroundColor: ColorsManger.lightBlue,
            child: SvgPicture.asset(
              'assets/svgs/general_speciality.svg',
              height: 40.h,
              width: 40.w,
            ),
          ),
          verticalSpace(8),
          Text(
            specializationsData?.name ?? 'General\nDoctor',
            style: TextStyle(fontSize: 12.sp, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
