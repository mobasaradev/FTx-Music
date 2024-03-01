import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ftx_music/common/common.dart';
import 'package:ftx_music/utils/utils.dart';

import '../../route/route_name.dart';

class AuthMethodPage extends StatelessWidget {
  const AuthMethodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(ImageManager.authMethod),
          customLogo(),
          10.y,
          CustomText(
            text: 'Millions of Songs. \nFree on Fpotify.',
            textAlign: TextAlign.center,
            style: AppTextTheme.textTheme.displayLarge,
          ),
          15.y,

          CustomButton(
            title: 'Sign up free',
            borderRadius: 45.r,
            backgroundColor: AppColors.primary,
            onTap: () => Navigator.pushNamed(context, RouteName.register),
          ),

          20.y,
          CustomButton(
            title: 'Continue with Google',
            
            isSoft: true,
            textColor: AppColors.white,
            svgIcon: SvgManager.google,
            borderRadius: 45.r,
            // isBorder: true,
            borderColor: AppColors.white,
            onTap: () => Navigator.pushNamed(context, RouteName.register),
          ),

          // GestureDetector(
          //   onTap: () => Navigator.pushNamed(context, RouteName.login),
          //   child: CustomButton(
          //     title: 'login'.toUpperCase(),
          //     borderRadius: 8.r,
          //     backgroundColor: AppColors.lightPrimary,
          //   ),
          // ),
        ],
      ),
    );
  }
}
