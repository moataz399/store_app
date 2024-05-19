

import 'package:flutter/material.dart';
import 'package:store_app/core/helpers/extensions.dart';
import 'package:store_app/core/language/lang_keys.dart';
import 'package:store_app/core/style/colors/colors_dark.dart';

import '../../../../../core/widgets/AdminAppBar.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: ColorsDark.mainColor,
      appBar: AdminAppBar(
        isMain: true,
        backgroundColor: ColorsDark.mainColor,
          title: context.translate(LangKeys.products)

      ),
      body: const Center(
        child: Text('products screen '),
      ),
    );
  }
}
