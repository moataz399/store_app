import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store_app/core/helpers/extensions.dart';
import 'package:store_app/core/language/lang_keys.dart';
import 'package:store_app/core/routing/routes.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          GestureDetector(
            onTap: () => context.pushNamed(Routes.homeScreen),
            child: Center(
              child: Text(
               context.translate(LangKeys.appName),
                style: TextStyle(fontSize: 23, color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
