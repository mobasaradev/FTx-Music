import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/utils.dart';

Widget customLogo() {
  return Container(
    width: 74.w,
    height: 74.h,
    decoration: BoxDecoration(
      color: AppColors.primary,
      borderRadius: BorderRadius.circular(12.r),
      boxShadow: [
        BoxShadow(
          blurRadius: 8.0.r,
          color: AppColors.lightPrimary.withOpacity(.6),
          offset: const Offset(3, 4),
        )
      ],
    ),
    child: SvgPicture.asset(SvgManager.logo),
  );
}
