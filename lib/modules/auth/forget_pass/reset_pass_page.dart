import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ftx_music/utils/utils.dart';

import '../../../common/common.dart';
import '../../../route/route_name.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({super.key});

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
                text: 'SET YOUR PASSWORD',
                style: AppTextTheme.textTheme.displaySmall,
              ),
              4.y,
              CustomText(
                text:
                    'Your new password must be different to previously used passwords.',
                textAlign: TextAlign.center,
                style: AppTextTheme.textTheme.headlineMedium,
              ),
              16.y,
              const CustomTextField(
                topLabel: 'Password',
                hintText: 'New Password',
                isSecured: true,
              ),
              16.y,
              const CustomTextField(
                topLabel: 'Confirm Password',
                hintText: 'Confirm Password',
                isSecured: true,
              ),
              20.y,
              CustomButton(
                title: 'RESET PASSWORD',
                backgroundColor: AppColors.lightPrimary,
                borderRadius: 8.r,
                onTap: () {
                  Navigator.pushNamed(context, RouteName.resetPassSuccess);
                },
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
