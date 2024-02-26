import 'package:flutter/material.dart';

import 'utils.dart';

LinearGradient customGradient() {
  return const LinearGradient(
    colors: [
      AppColors.secondary,
      AppColors.primary,
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
