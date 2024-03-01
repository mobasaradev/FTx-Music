import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/utils.dart';

Widget customLogo() {
  return SizedBox(
    width: 74.w,
    height: 74.h,
    child: SvgPicture.asset(SvgManager.logo),
  );
}
