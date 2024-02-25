import 'package:flutter/material.dart';

import 'utils.dart';

LinearGradient customGradient() {
  return const LinearGradient(
    colors: [
      AppColors.primary,
      AppColors.secondary,
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
