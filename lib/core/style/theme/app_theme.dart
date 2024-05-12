import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:store_app/core/style/colors/colors_dark.dart';
import 'package:store_app/core/style/colors/colors_light.dart';
import 'package:store_app/core/style/fonts/font_family_helper.dart';

import 'package:store_app/core/style/theme/color_extension.dart';

ThemeData themeDark() {
  return ThemeData(
    scaffoldBackgroundColor: ColorsDark.mainColor,
    extensions: const <ThemeExtension<dynamic>>[
      MyColors.dark, // MyAssets.dark
    ],
    useMaterial3: true,
    textTheme: TextTheme(
      displaySmall: TextStyle(
        fontSize: 14,
        color: ColorsDark.white,
        fontFamily: FontFamilyHelper.getLocalizedFontFamily(),
      ),
    ),
  );
}

ThemeData themeLight() {
  return ThemeData(
    scaffoldBackgroundColor: ColorsLight.mainColor,
    extensions: const <ThemeExtension<dynamic>>[
      MyColors.light, //MyAssets.light
    ],
    useMaterial3: true,
    textTheme: TextTheme(
      displaySmall: TextStyle(
        fontSize: 14,
        color: ColorsLight.black,
        fontFamily: FontFamilyHelper.getLocalizedFontFamily(),
      ),
    ),
  );
}
