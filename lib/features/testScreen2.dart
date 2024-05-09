import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store_app/core/helpers/extensions.dart';
import 'package:store_app/core/routing/routes.dart';

class TestScreen2 extends StatelessWidget {
  const TestScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          GestureDetector(
            onTap: () => context.pushNamed(Routes.homeScreen),
            child: Center(
              child: Text(
                'Test',
                style: TextStyle(fontSize: 23, color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
