import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'utils.dart';

class AppTextTheme {
  AppTextTheme._();

  static TextTheme textTheme = TextTheme(
    displayLarge: TextStyle(
      fontFamily: 'Poppins',
      color: AppColors.white,
      fontSize: 30.sp,
      fontWeight: FontWeight.w700,
    ),
    displayMedium: TextStyle(
      fontFamily: 'Poppins',
      color: AppColors.white,
      fontSize: 27.sp,
      fontWeight: FontWeight.w600,
    ),
    displaySmall: TextStyle(
      fontFamily: 'Poppins',
      color: AppColors.white,
      fontSize: 24.sp,
      fontWeight: FontWeight.w600,
    ),
    headlineLarge: TextStyle(
      fontFamily: 'Poppins',
      color: AppColors.white,
      fontSize: 16.sp,
      fontWeight: FontWeight.w400,
    ),
    headlineMedium: TextStyle(
      fontFamily: 'Poppins',
      color: AppColors.white,
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
    ),
    // headlineSmall: TextStyle(
    //   fontFamily: 'Poppins',
    //   color: AppColors.white,
    //   fontSize: 14.sp,
    //   fontWeight: FontWeight.w400,
    // ),
    // bodyLarge: TextStyle(
    //   fontFamily: 'Poppins',
    //   color: AppColors.white,
    //   fontSize: 12.sp,
    //   fontWeight: FontWeight.w400,
    // ),

    // bodySmall: TextStyle(
    //   fontFamily: 'Poppins',
    //   color: AppColors.white,
    //   fontSize: 10.sp,
    //   fontWeight: FontWeight.w400,
    // ),
  );
}
