import 'package:flutter/material.dart';
import 'package:flutter_advanced_course/core/theming/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/theming/styles.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hi ,mai!', style: TextStyles.font18DarkBlueBold),
            Text('How Are you Today?', style: TextStyles.font12GrayRegular),
          ],
        ),
        Spacer(),
        CircleAvatar(
          radius: 24.0,
          backgroundColor: ColorsManger.moreLighterGray,
          child: SvgPicture.asset('assets/svgs/notifications.svg'),
        ),
      ],
    );
  }
}
