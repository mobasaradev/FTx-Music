import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ftx_music/common/custom_text.dart';
import 'package:ftx_music/route/route_name.dart';

import '../../utils/utils.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 2),
      () => Navigator.pushReplacementNamed(context, RouteName.onboard),
    );
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(gradient: customGradient()),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              SvgManager.logo,
              width: 150.w,
              height: 150.h,
            ),
            CustomText(
              text: 'Start Turing Your ideas \ninto Reality',
              textAlign: TextAlign.center,
              style: AppTextTheme.textTheme.displayMedium,
            ),
            4.y,
            CustomText(
              text: 'Listen to FTx Music',
              textAlign: TextAlign.center,
              style: AppTextTheme.textTheme.displaySmall?.copyWith(
                color: AppColors.yellow,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
