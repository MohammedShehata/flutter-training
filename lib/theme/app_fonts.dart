import 'package:flutter/material.dart';
import 'package:flutter_training/theme/app_colors.dart';

class AppFonts {
  static TextStyle? headline2FontDark(BuildContext context) {
    return Theme.of(context)
        .textTheme
        .headline2
        ?.copyWith(color: AppColors.fontDark);
  }
}
