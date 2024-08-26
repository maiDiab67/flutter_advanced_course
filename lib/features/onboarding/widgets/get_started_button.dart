import 'package:flutter/material.dart';
import 'package:flutter_advanced_course/core/helpers/extenstions.dart';
import 'package:flutter_advanced_course/core/routing/routes.dart';
import 'package:flutter_advanced_course/core/theming/colors.dart';
import 'package:flutter_advanced_course/core/theming/styles.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
  
      onPressed: (){
        context.pushNamed(Routes.loginScreen);
      },
      style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(ColorsManger.mainBlue),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: WidgetStateProperty.all(
          const Size(double.infinity , 52)
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16)
          )
        )
      
    ),
     child: Text('Get Started'
     ,style:
      TextStyles.font16WhiteSemiBold,));
  }
}