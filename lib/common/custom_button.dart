import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/utils.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onTap;
  final String? icon;
  final String? title;
  final bool? isSoft;
  final bool? isBorder;
  final IconData? leadingIcon;
  final double? borderRadius;
  final Color? borderColor;
  final Color? textColor;
  final Color? backgroundColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final bool? isLoading;
  final IconData? buttonIcon;
  final Color? iconsColor;
  final Color? loadingIndicatorColor;
  final bool? isGradient;
  final String? svgIcon;

  const CustomButton({
    super.key,
    this.onTap,
    this.icon,
    this.title,
    this.isSoft,
    this.isBorder,
    this.leadingIcon,
    this.borderRadius,
    this.borderColor,
    this.textColor,
    this.fontSize,
    this.fontWeight,
    this.isLoading,
    this.buttonIcon,
    this.iconsColor,
    this.loadingIndicatorColor,
    this.isGradient,
    this.svgIcon,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return InkWell(
      onTap: onTap,
      child: Container(
        width: size.width * .9,
        decoration: BoxDecoration(
          color: isBorder == true
              ? AppColors.transparent
              : isSoft == true
                  ? AppColors.secondaryBlack
                  : backgroundColor,
          border: isBorder == true
              ? Border.all(
                  color: borderColor ?? AppColors.primary.withOpacity(0.2),
                  width: 1.5.w,
                )
              : null,
          borderRadius: BorderRadius.circular(borderRadius ?? 50.r),
        ),
        child: isLoading == true
            ? Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 25.h,
                      width: 25.w,
                      child: CircularProgressIndicator(
                        color: loadingIndicatorColor ?? AppColors.white,
                      ),
                    ),
                    15.x,
                    Text(
                      'Loading...',
                      style: AppTextTheme.textTheme.headlineLarge?.copyWith(
                        color: loadingIndicatorColor ?? AppColors.white,
                      ),
                    ),
                  ],
                ),
              )
            : buttonIcon != null
                ? Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          title ?? '',
                          style: AppTextTheme.textTheme.headlineLarge?.copyWith(
                            color: isBorder == true
                                ? AppColors.white
                                : isSoft == true
                                    ? AppColors.black
                                    : textColor,
                          ),
                        ),
                        10.x,
                        SizedBox(
                          height: 25.h,
                          width: 25.w,
                          child: Icon(
                            buttonIcon,
                            color: iconsColor ?? AppColors.black,
                          ),
                        ),
                      ],
                    ),
                  )
                : leadingIcon != null
                    ? Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 25.h,
                              width: 25.w,
                              child: Icon(
                                leadingIcon,
                                color: iconsColor ?? AppColors.black,
                              ),
                            ),
                            Text(
                              title ?? '',
                              style: TextStyle(
                                color: isBorder == true
                                    ? AppColors.primary.withOpacity(0.2)
                                    : isSoft == true
                                        ? textColor ?? AppColors.primary
                                        : textColor ?? AppColors.black,
                                fontSize: fontSize ?? 17.sp,
                                fontWeight: fontWeight ?? FontWeight.w600,
                              ),
                            ),
                            const SizedBox()
                          ],
                        ),
                      )
                    : svgIcon != null
                        ? Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 15.w,
                              vertical: 15.h,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  svgIcon ?? SvgManager.logo,
                                  width: 25.w,
                                  height: 25.h,
                                ),
                                title == '' ? 0.x : 10.x,
                                Text(
                                  title ?? '',
                                  style: AppTextTheme.textTheme.headlineLarge
                                      ?.copyWith(
                                    color: isBorder == true
                                        ? AppColors.white
                                        : isSoft == true
                                            ? AppColors.black
                                            : textColor,
                                  ),
                                ),
                              ],
                            ),
                          )
                        : Center(
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 15.w,
                                vertical: 15.h,
                              ),
                              child: Text(
                                title ?? '',
                                style: AppTextTheme.textTheme.headlineLarge
                                    ?.copyWith(
                                  color: isBorder == true
                                      ? AppColors.primary
                                      : isSoft == true
                                          ? textColor ?? AppColors.primary
                                          : textColor ?? AppColors.black,
                                ),
                              ),
                            ),
                          ),
      ),
    );
  }
}
