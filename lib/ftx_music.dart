import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'route/app_router.dart';
import 'route/route_name.dart';
import 'utils/utils.dart';

class FTxMusic extends StatelessWidget {
  const FTxMusic({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: AppConfig.title,
        theme: AppTheme.lightTheme,
        themeMode: ThemeMode.system,
        initialRoute: RouteName.splash,
        onGenerateRoute: AppRoutes.onGenerateRoute,
      ),
    );
  }
}
