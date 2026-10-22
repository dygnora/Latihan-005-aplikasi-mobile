import 'package:flutter/material.dart';

void main () {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Menambahkan debugShowCheckedModeBanner untuk menampilkan banner debug di aplikasi
      debugShowCheckedModeBanner: true,

      // Menambahkan tema untuk mengatur tema aplikasi
      theme:ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.amberAccent
        ),
        // Menambahkan useMaterial3 untuk mengatur penggunaan Material Design 3
        useMaterial3: true,
      ),

      // Menambahkan darkTheme untuk mengatur tema gelap aplikasi
      darkTheme:ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.amberAccent,
          brightness: Brightness.dark
        ),
        // Menambahkan useMaterial3 untuk mengatur penggunaan Material Design 3
        useMaterial3: true,
      ),

      // Menambahkan themeMode untuk mengatur mode tema aplikasi (switch antara tema terang dan gelap)
      themeMode: ThemeMode.dark,

      // Menambahkan title untuk mengatur judul aplikasi
      title: 'Aplikasi Mahasiswa',

      // Menambahkan home untuk mengatur halaman utama aplikasi
      home: const ProfilePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: const Text('Dashboard Mahasiswa', 
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        ),
        ),
        body: const Center(
          
          child: Text('Deny Dermawan - 1124160250',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          ),
        ),
      );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Page'),
      ),
      body: const Center(
        child: Text('Hi nama saya Deny Dermawan, saya dari kelas TI 24 P SE-1',
        style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}