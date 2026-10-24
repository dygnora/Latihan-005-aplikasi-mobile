import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';

class MainLayout extends StatelessWidget {
  const MainLayout({
    super.key,
    // Menambahkan required untuk title dan body agar tidak null (wajib di isi)
    required this.title, // menyimpan teks yang akan ditampilkan di AppBar
    required this.body, // menyimpan widget yang akan ditampilkan di body halaman (bagian tengah halaman)
    });

    // Menambahkan final untuk title dan body agar tidak bisa diubah
    final String title; // teks yang akan ditampilkan di AppBar
    final Widget body; // widget yang akan ditampilkan di body halaman (bagian tengah halaman)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Menambahkan title untuk AppBar agar bisa menampilkan judul halaman sesuai dengan halaman yang sedang dibuka
        title: Text(title),
      ),
      // Menambahkan drawer untuk menampilkan menu navigasi ke halaman lain
      drawer: const AppDrawer(),
      body: body,
    );
  }
}