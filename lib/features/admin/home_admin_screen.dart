
import 'package:flutter/material.dart';

class HomeAdminScreen extends StatelessWidget {
  const HomeAdminScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Home Screen'),
      ),
      body: const Center(
        child: Text('Admin Home Screen'),
      ),
    );
  }
}
