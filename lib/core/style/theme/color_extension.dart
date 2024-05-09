
import 'package:flutter/material.dart';

import 'package:store_app/core/style/colors/colors_dark.dart';
import 'package:store_app/core/style/colors/colors_light.dart';

class MyColors extends ThemeExtension<MyColors> {
  const MyColors({
    required this.mainColor,

  });

  final Color? mainColor;


  @override
  ThemeExtension<MyColors> copyWith({
    Color? mainColor,
    Color? bluePinkDark,
    Color? bluePinkLight,
    Color? textColor,
    Color? textFormBorder,
    Color? navBarbg,
    Color? navBarSelectedTab,
    Color? containerShadow1,
    Color? containerShadow2,
    Color? containerLinear1,
  }) {
    return MyColors(
      mainColor: mainColor,

    );
  }

  @override
  ThemeExtension<MyColors> lerp(
      covariant ThemeExtension<MyColors>? other,
      double t,
      ) {
    if (other is! MyColors) {
      return this;
    }
    return MyColors(
      mainColor: mainColor,

    );
  }

  static const MyColors dark = MyColors(
    mainColor: ColorsDark.mainColor,

  );

  static const MyColors light = MyColors(
    mainColor: ColorsLight.mainColor,

  );
}
