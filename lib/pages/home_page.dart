import 'package:flutter/material.dart';
import 'package:latihan_005_aplikasi_mobile/layouts/main_layout.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Home',
      body: const Center(
        child: Text(
          'Deny Dermawan - 1124160250',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}