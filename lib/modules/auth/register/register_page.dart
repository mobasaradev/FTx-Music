// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:ftx_music/route/route_name.dart';
// import 'package:ftx_music/utils/utils.dart';

// import '../../../common/common.dart';

// class RegisterPage extends StatelessWidget {
//   const RegisterPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         width: double.infinity,
//         height: double.infinity,
//         decoration: BoxDecoration(gradient: customGradient()),
//         child: Padding(
//           padding: const EdgeInsets.all(16),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               customLogo(),
//               10.y,
//               CustomText(
//                 text: 'Create your account'.toUpperCase(),
//                 style: AppTextTheme.textTheme.displayMedium,
//               ),
//               30.y,
//               const CustomTextField(
//                 topLabel: 'Name',
//                 hintText: 'Your Name',
//                 keyboardType: TextInputType.name,
//               ),
//               12.y,
//               const CustomTextField(
//                 topLabel: 'Email',
//                 hintText: 'example@gmail.com',
//                 keyboardType: TextInputType.emailAddress,
//               ),
//               12.y,
//               const CustomTextField(
//                 topLabel: 'Password',
//                 hintText: '******',
//                 isSecured: true,
//               ),
//               30.y,
//               CustomButton(
//                 title: 'register'.toUpperCase(),
//                 borderRadius: 8.r,
//                 backgroundColor: AppColors.white,
//               ),
//               15.y,
//               Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 5.w),
//                 child: Row(
//                   children: [
//                     Expanded(
//                       child: Divider(
//                         color: AppColors.white.withOpacity(0.5),
//                       ),
//                     ),
//                     Padding(
//                       padding: EdgeInsets.symmetric(horizontal: 15.w),
//                       child: Text(
//                         'Or continue with',
//                         style: AppTextTheme.textTheme.headlineMedium
//                             ?.copyWith(color: AppColors.white.withOpacity(0.4)),
//                       ),
//                     ),
//                     Expanded(
//                       child: Divider(
//                         color: AppColors.white.withOpacity(0.5),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               15.y,
//               CustomButton(
//                 title: 'Register with Google'.toUpperCase(),
//                 svgIcon: SvgManager.google,
//                 borderRadius: 8.r,
//                 backgroundColor: AppColors.lightPrimary,
//               ),
//               20.y,
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   CustomText(
//                     text: 'Already have an account? ',
//                     style: AppTextTheme.textTheme.headlineMedium,
//                   ),
//                   GestureDetector(
//                     onTap: () => Navigator.pushNamed(context, RouteName.login),
//                     child: CustomText(
//                       text: ' login'.toUpperCase(),
//                       style: AppTextTheme.textTheme.headlineMedium?.copyWith(
//                         color: AppColors.black,
//                         fontWeight: FontWeight.w600,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
