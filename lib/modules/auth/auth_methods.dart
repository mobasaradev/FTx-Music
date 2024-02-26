import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ftx_music/common/common.dart';
import 'package:ftx_music/route/route_name.dart';
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
              customLogo(),
              10.y,
              CustomText(
                text: 'Welcome to FTx Music'.toUpperCase(),
                style: AppTextTheme.textTheme.displaySmall
                    ?.copyWith(color: AppColors.blueColor),
              ),
              15.y,
              CustomText(
                text: 'Create your account'.toUpperCase(),
                style: AppTextTheme.textTheme.displayMedium,
              ),
              CustomText(
                text: 'It\'s Totally Free',
                style: AppTextTheme.textTheme.headlineLarge,
              ),
              20.y,
              CustomButton(
                title: 'register'.toUpperCase(),
                borderRadius: 8.r,
                backgroundColor: AppColors.white,
                onTap: () => Navigator.pushNamed(context, RouteName.register),
              ),
              20.y,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: AppColors.white.withOpacity(0.5),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.w),
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
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, RouteName.login),
                child: CustomButton(
                  title: 'login'.toUpperCase(),
                  borderRadius: 8.r,
                  backgroundColor: AppColors.lightPrimary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
