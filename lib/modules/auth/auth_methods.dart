import 'package:flutter/material.dart';
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
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ImageManager.background),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              50.y,
              SizedBox(
                width: 180,
                child: SvgPicture.asset(
                  SvgManager.appLogo,
                ),
              ),
              30.y,
              CustomText(
                text: 'Welcome to Vii Music'.toUpperCase(),
                style: AppTextTheme.textTheme.displaySmall
                    ?.copyWith(color: AppColors.headerText),
              ),
              24.y,
              CustomText(
                text: 'Create your account'.toUpperCase(),
                style: AppTextTheme.textTheme.displayMedium,
              ),
              8.y,
              CustomText(
                text: 'It\'s Totally Free',
                style: AppTextTheme.textTheme.headlineLarge
                    ?.copyWith(color: AppColors.primary),
              ),
              20.y,
              CustomButton(
                title: 'Sign up'.toUpperCase(),
                borderRadius: 8,
                isBorder: true,
                isGradient: true,
              ),
              20.y,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: AppColors.primary.withOpacity(0.5),
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
                        color: AppColors.primary.withOpacity(0.5),
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
