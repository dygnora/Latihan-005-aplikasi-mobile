import 'package:flutter/material.dart';
import 'package:latihan_005_aplikasi_mobile/layouts/main_layout.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Pengaturan',
      body: const Center(
        child: Text('COMING SOON',
          style: TextStyle(
            fontSize: 38,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}