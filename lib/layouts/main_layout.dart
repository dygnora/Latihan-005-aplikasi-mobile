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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Menambahkan aksi untuk tombol FAB, disini saya menambahkan aksi untuk menampilkan snackbar
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Tombol FAB ditekan!'),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          // Menambahkan aksi untuk tombol navigasi bawah, disini saya menambahkan aksi untuk menavigasi ke halaman lain
          if (index == 0) {
            Navigator.pushReplacementNamed(context, '/');
          } else if (index == 1) {
            Navigator.pushReplacementNamed(context, '/profile');
          }
        },
        
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}