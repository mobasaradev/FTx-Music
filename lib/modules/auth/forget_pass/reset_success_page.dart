import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ftx_music/utils/utils.dart';

import '../../../common/common.dart';
import '../../../route/route_name.dart';

class ResetPassSuccessPage extends StatelessWidget {
  const ResetPassSuccessPage({super.key});

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
                text: 'password Reset'.toUpperCase(),
                style: AppTextTheme.textTheme.displaySmall,
              ),
              4.y,
              CustomText(
                text:
                    'Your password has been successfully reset! Click below to log in.',
                textAlign: TextAlign.center,
                style: AppTextTheme.textTheme.headlineMedium,
              ),
              40.y,
              CustomButton(
                title: 'CONTINUE',
                backgroundColor: AppColors.lightPrimary,
                borderRadius: 8.r,
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
