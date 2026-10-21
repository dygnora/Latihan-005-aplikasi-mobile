import 'package:flutter/material.dart';

void main () {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      theme:ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.amberAccent
        ),
      ),
      darkTheme: ThemeData.dark(
        useMaterial3: true,
      ),
      title: 'Aplikasi Mahasiswa',
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