import 'package:flutter/material.dart';
import 'package:store_app/core/style/colors/colors_dark.dart';

class CustomBottomSheet {
  static void showBottomSheet(
      {required BuildContext context,
      required Widget widget,
      Color? backgroundColor,
      void Function()? whenComplete}) {
    showModalBottomSheet<dynamic>(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      context: context,
      backgroundColor: backgroundColor ?? ColorsDark.blueDark,
      isScrollControlled: true,
      barrierColor: Colors.transparent,
      builder: (context) {
        return SingleChildScrollView(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Container(
            padding: const EdgeInsets.all(16),
            child: widget,
          ),
        );
      },
    );
  }
}
