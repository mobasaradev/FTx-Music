import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension NumExtension on num {
  /// Create a SizedBox with the width set to this value.
  SizedBox get x {
    return SizedBox(width: toDouble().w);
  }

  /// Create a SizedBox with the height set to this value.
  SizedBox get y {
    return SizedBox(height: toDouble().h);
  }
}
