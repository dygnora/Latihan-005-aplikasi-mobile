import 'package:flutter/material.dart';
import 'package:latihan_005_aplikasi_mobile/layouts/main_layout.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Profile',
      body: const Center(
        child: Text(
          'Ini adalah halaman profile',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}