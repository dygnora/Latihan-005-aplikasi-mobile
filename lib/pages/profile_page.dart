import 'package:flutter/material.dart';
import 'package:latihan_005_aplikasi_mobile/layouts/main_layout.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Profile',
      body: Center(
        // Menambahkan widget Column untuk menampilkan beberapa widget secara vertikal
        child: Column(
          // Menambahkan mainAxisAlignment untuk mengatur posisi widget di tengah halaman
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/profile.jpg'),
            ),
            SizedBox(height: 20),
            Text(
              'Deny Dermawan',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.deepOrangeAccent
              ),
            ),
            SizedBox(height: 10),
            Text(
              'TI 24 P SE-1',
              style: TextStyle(
                fontSize: 18,
                color: Colors.amberAccent,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Teknik Informatika',
              style: TextStyle(
                fontSize: 18,
                color: Colors.lightGreenAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}