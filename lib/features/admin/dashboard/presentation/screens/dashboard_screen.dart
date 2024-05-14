import 'package:flutter/material.dart';
import 'package:store_app/core/style/colors/colors_dark.dart';
import 'package:store_app/core/widgets/AdminAppBar.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorsDark.mainColor,
       appBar: AdminAppBar(
      isMain: true,
      backgroundColor: ColorsDark.mainColor,
      title: 'DashBoard ',
    ),
      body:SafeArea(
        child: Column(
          children: [
              
          ],
        ),
      )
    );
  }
}
