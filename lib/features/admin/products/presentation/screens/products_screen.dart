

import 'package:flutter/material.dart';
import 'package:store_app/core/style/colors/colors_dark.dart';

import '../../../../../core/widgets/AdminAppBar.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorsDark.mainColor,
      appBar: AdminAppBar(
        isMain: true,
        backgroundColor: ColorsDark.mainColor,
        title: 'Products ',
      ),
      body: Center(
        child: Text('products screen '),
      ),
    );
  }
}
