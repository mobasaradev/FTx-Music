import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ftx_music/common/common.dart';
import 'package:ftx_music/utils/utils.dart';

class AuthMethodPage extends StatelessWidget {
  const AuthMethodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(gradient: customGradient()),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 74.w,
                height: 74.h,
                decoration: BoxDecoration(
                  color: AppColors.secondary,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 8.0,
                      color: AppColors.lightPrimary.withOpacity(.6),
                      offset: const Offset(3, 4),
                    )
                  ],
                ),
                child: SvgPicture.asset(SvgManager.logo),
              ),
              30.y,
              CustomText(
                text: 'Welcome to FTx Music'.toUpperCase(),
                style: AppTextTheme.textTheme.displaySmall
                    ?.copyWith(color: AppColors.blueColor),
              ),
              24.y,
              CustomText(
                text: 'Create your account'.toUpperCase(),
                style: AppTextTheme.textTheme.displayMedium,
              ),
              4.y,
              CustomText(
                text: 'It\'s Totally Free',
                style: AppTextTheme.textTheme.headlineLarge,
              ),
              20.y,
              CustomButton(
                title: 'Sign up'.toUpperCase(),
                borderRadius: 8,
                textColor: AppColors.secondary,
                // isBorder: true,
              ),
              20.y,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: AppColors.white.withOpacity(0.5),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        'Already have an account?',
                        style: AppTextTheme.textTheme.headlineMedium
                            ?.copyWith(color: AppColors.white.withOpacity(0.4)),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: AppColors.white.withOpacity(0.5),
                      ),
                    ),
                  ],
                ),
              ),
              20.y,
              CustomButton(
                title: 'Sign in'.toUpperCase(),
                borderRadius: 8,
                textColor: AppColors.black,
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
