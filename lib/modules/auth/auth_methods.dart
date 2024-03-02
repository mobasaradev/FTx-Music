import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ftx_music/common/common.dart';
import 'package:ftx_music/utils/utils.dart';

import '../../route/route_name.dart';

class AuthMethodPage extends StatelessWidget {
  const AuthMethodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Image.asset(ImageManager.authMethod),
                Positioned(
                  bottom: -30.h,
                  left: 0.w,
                  right: 0.w,
                  child: customLogo(),
                ),
              ],
            ),
            50.y,
            CustomText(
              text: 'Millions of Songs. \nFree on mPotify.',
              textAlign: TextAlign.center,
              style: AppTextTheme.textTheme.displayLarge,
            ),
            15.y,
            CustomButton(
              title: 'Sign up free',
              borderRadius: 45.r,
              backgroundColor: AppColors.primary,
              textColor: AppColors.black,
              onTap: () => Navigator.pushNamed(context, RouteName.register),
            ),
            20.y,
            CustomButton(
              title: 'Continue with Google',
              textColor: AppColors.white,
              svgIcon: SvgManager.google,
              borderRadius: 45.r,
              isBorder: true,
              borderColor: AppColors.white,
              onTap: () => Navigator.pushNamed(context, RouteName.register),
            ),
            20.y,
            CustomButton(
              title: 'Continue with Facebook',
              textColor: AppColors.white,
              svgIcon: SvgManager.facebook,
              borderRadius: 45.r,
              isBorder: true,
              borderColor: AppColors.white,
              onTap: () => Navigator.pushNamed(context, RouteName.register),
            ),
            20.y,
            CustomButton(
              title: 'Continue with Apple',
              textColor: AppColors.white,
              svgIcon: SvgManager.apple,
              borderRadius: 45.r,
              isBorder: true,
              borderColor: AppColors.white,
              onTap: () => Navigator.pushNamed(context, RouteName.register),
            ),
            20.y,
            CustomButton(
              title: 'Log in',
              textColor: AppColors.white,
              onTap: () => Navigator.pushNamed(context, RouteName.register),
            ),
            20.y,
          ],
        ),
      ),
    );
  }
}
