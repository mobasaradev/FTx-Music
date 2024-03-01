// import 'package:flutter_screenutil/flutter_screenutil.dart';

// import '../../../common/common.dart';
// import '../../../route/route_name.dart';
// import '../../../utils/utils.dart';

// class ForgotPassPage extends StatelessWidget {
//   const ForgotPassPage({super.key});

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
//               4.y,
//               CustomText(
//                 text: 'FTx Music'.toUpperCase(),
//                 style: AppTextTheme.textTheme.headlineLarge?.copyWith(
//                     color: AppColors.blueColor, fontWeight: FontWeight.w600),
//               ),
//               10.y,
//               CustomText(
//                 text: 'FORGET PASSWORD?',
//                 style: AppTextTheme.textTheme.displaySmall,
//               ),
//               4.y,
//               CustomText(
//                 text: 'No worries , we’ll send you reset instructions.',
//                 style: AppTextTheme.textTheme.bodyLarge
//                     ?.copyWith(fontWeight: FontWeight.w500),
//               ),
//               const CustomTextField(
//                 topLabel: '',
//                 hintText: 'example@gmail.com',
//               ),
//               25.y,
//               CustomButton(
//                 title: 'RESET PASSWORD'.toUpperCase(),
//                 borderRadius: 8.r,
//                 backgroundColor: AppColors.lightPrimary,
//                 onTap: () =>
//                     Navigator.pushNamed(context, RouteName.linkChecked),
//               ),
//               5.y,
//               CustomButton(
//                 title: 'BACK TO LOG IN',
//                 onTap: () => Navigator.pop(context),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
