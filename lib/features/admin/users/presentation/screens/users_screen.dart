import 'package:flutter/material.dart';
import 'package:store_app/core/helpers/extensions.dart';
import 'package:store_app/core/language/lang_keys.dart';
import 'package:store_app/core/style/colors/colors_dark.dart';
import 'package:store_app/core/widgets/AdminAppBar.dart';

class UsersScreen extends StatelessWidget {
  const UsersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AdminAppBar(
          isMain: true,
          backgroundColor: ColorsDark.mainColor,
          title: context.translate(LangKeys.users),),
      body: const Center(
        child: Text('users  screen '),
      ),
    );
  }
}
