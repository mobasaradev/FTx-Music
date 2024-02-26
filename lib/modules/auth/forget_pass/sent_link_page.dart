import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common/common.dart';
import '../../../route/route_name.dart';
import '../../../utils/utils.dart';

class LinkSendPage extends StatelessWidget {
  const LinkSendPage({super.key});

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
              4.y,
              CustomText(
                text: 'FTx Music'.toUpperCase(),
                style: AppTextTheme.textTheme.headlineLarge?.copyWith(
                    color: AppColors.blueColor, fontWeight: FontWeight.w600),
              ),
              10.y,
              CustomText(
                text: 'We sent a password reset link to:',
                style: AppTextTheme.textTheme.displaySmall,
                textAlign: TextAlign.center,
              ),
              30.y,
              CustomText(
                text: '<Email>',
                style: AppTextTheme.textTheme.headlineMedium,
              ),
              30.y,
              CustomButton(
                title: 'RESET PASSWORD',
                backgroundColor: AppColors.lightPrimary,
                borderRadius: 8.r,
                onTap: () {
                  Navigator.pushNamed(context, RouteName.resetPass);
                },
              ),
              12.y,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    text: 'Didn’t get an email ?',
                    style: AppTextTheme.textTheme.headlineMedium
                        ?.copyWith(fontWeight: FontWeight.w500),
                  ),
                  4.x,
                  CustomText(
                    text: 'RESEND',
                    style: AppTextTheme.textTheme.headlineMedium
                        ?.copyWith(fontWeight: FontWeight.w700),
                    // onTap: () => Navigator.pushNamed(context, RouteName.resetPass),
                  )
                ],
              ),
              5.y,
              CustomButton(
                title: 'BACK TO LOG IN',
                onTap: () {
                  Navigator.pushNamed(context, RouteName.login);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
