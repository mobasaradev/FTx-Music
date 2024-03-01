import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'utils.dart';

class AppTextTheme {
  AppTextTheme._();

  static TextTheme textTheme = TextTheme(
    displayLarge: TextStyle(
      fontFamily: 'AvenirNext',
      color: AppColors.white,
      fontSize: 28.sp,
      fontWeight: FontWeight.w700,
    ),
    displayMedium: TextStyle(
      fontFamily: 'AvenirNext',
      color: AppColors.white,
      fontSize: 20.sp,
      fontWeight: FontWeight.w600,
    ),
    displaySmall: TextStyle(
      fontFamily: 'AvenirNext',
      color: AppColors.white,
      fontSize: 17.sp,
      fontWeight: FontWeight.w600,
    ),
    headlineLarge: TextStyle(
      fontFamily: 'AvenirNext',
      color: AppColors.white,
      fontSize: 16.sp,
      fontWeight: FontWeight.w400,
    ),
    headlineMedium: TextStyle(
      fontFamily: 'AvenirNext',
      color: AppColors.white,
      fontSize: 10.sp,
      fontWeight: FontWeight.w400,
    ),
    headlineSmall: TextStyle(
      fontFamily: 'AvenirNext',
      color: AppColors.white,
      fontSize: 8.sp,
      fontWeight: FontWeight.w400,
    ),
    // bodyLarge: TextStyle(
    //   fontFamily: 'AvenirNext',
    //   color: AppColors.white,
    //   fontSize: 12.sp,
    //   fontWeight: FontWeight.w400,
    // ),

    // bodySmall: TextStyle(
    //   fontFamily: 'AvenirNext',
    //   color: AppColors.white,
    //   fontSize: 10.sp,
    //   fontWeight: FontWeight.w400,
    // ),
  );
}
