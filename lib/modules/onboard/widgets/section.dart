import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ftx_music/common/common.dart';
import 'package:ftx_music/utils/utils.dart';

class Section extends StatelessWidget {
  final String image;
  final String title;
  final void Function()? onTap;
  final String buttonTitle;

  const Section({
    super.key,
    required this.image,
    required this.title,
    this.onTap,
    required this.buttonTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(image),
        24.y,
        CustomText(
          text: title,
          textAlign: TextAlign.center,
          style: AppTextTheme.textTheme.displaySmall,
        ),
        30.y,
        Align(
          alignment: Alignment.centerRight,
          child: GestureDetector(
            onTap: onTap,
            child: Container(
              margin: const EdgeInsets.only(right: 4),
              width: 70.w,
              height: 40.h,
              decoration: BoxDecoration(
                gradient: customGradient(),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Center(
                child: CustomText(
                  text: buttonTitle,
                  textAlign: TextAlign.center,
                  style: AppTextTheme.textTheme.headlineLarge,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
