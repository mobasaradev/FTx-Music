import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ftx_music/utils/utils.dart';

import '../../../common/common.dart';
import '../../../route/route_name.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool? isChecked = false;
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
                text: 'Sign in to your account'.toUpperCase(),
                textAlign: TextAlign.center,
                style: AppTextTheme.textTheme.displaySmall,
              ),
              30.y,
              const CustomTextField(
                topLabel: 'Email',
                hintText: 'example@gmail.com',
                keyboardType: TextInputType.emailAddress,
              ),
              12.y,
              const CustomTextField(
                topLabel: 'Password',
                hintText: '******',
                isSecured: true,
              ),
              30.y,
              CustomButton(
                title: 'login'.toUpperCase(),
                borderRadius: 8.r,
                backgroundColor: AppColors.white,
              ),
              15.y,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        activeColor: AppColors.secondary,
                        side: const BorderSide(
                          color: AppColors.white,
                          width: 1,
                        ),
                        value: isChecked,
                        onChanged: (newValue) {
                          setState(() {
                            isChecked = newValue;
                          });
                        },
                      ),
                      CustomText(
                        text: 'Remember Me',
                        style: AppTextTheme.textTheme.headlineMedium,
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () =>
                        Navigator.pushNamed(context, RouteName.forgetPass),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: CustomText(
                        text: 'FORGOT PASSWORD',
                        style: AppTextTheme.textTheme.headlineMedium
                            ?.copyWith(color: AppColors.yellow),
                      ),
                    ),
                  ),
                ],
              ),
              15.y,
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
                        'Or continue with',
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
              15.y,
              CustomButton(
                title: 'login with Google'.toUpperCase(),
                svgIcon: SvgManager.google,
                borderRadius: 8.r,
                backgroundColor: AppColors.lightPrimary,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
