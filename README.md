# Aplikasi Mahasiswa

Aplikasi mobile sederhana yang dikembangkan menggunakan **Flutter** dan **Dart** sebagai sarana belajar pengembangan aplikasi Android. Project ini mencakup pembuatan halaman, reusable widget, navigasi, pengaturan tema, serta penggunaan aset gambar dan font kustom.

## 📌 Tentang Project

Project ini dibuat untuk mempelajari konsep dasar pengembangan aplikasi mobile menggunakan Flutter, mulai dari struktur aplikasi hingga implementasi komponen antarmuka yang dapat digunakan kembali.

## ✨ Fitur

- **Home Page** — Halaman utama aplikasi.
- **Profile Page** — Menampilkan foto profil, nama, kelas, dan program studi.
- **Settings Page** — Halaman pengaturan yang saat ini masih dalam tahap pengembangan.
- **Reusable Main Layout** — Menggunakan layout bersama yang mencakup AppBar, Drawer, Floating Action Button, dan Bottom Navigation Bar.
- **Navigation Drawer** — Menu navigasi samping untuk berpindah halaman.
- **Bottom Navigation Bar** — Navigasi bawah untuk Home, Profile, dan Settings.
- **Floating Action Button (FAB)** — Tombol aksi yang menampilkan SnackBar ketika ditekan.
- **Named Routes** — Mengatur navigasi antarhalaman menggunakan nama rute.
- **Theme Configuration** — Mengatur tema terang dan gelap menggunakan `ThemeData`.
- **Custom Font** — Menggunakan font Fontdiner Swanky.
- **Profile Image Asset** — Menampilkan foto profil menggunakan aset lokal.
- **Material Design 3** — Menggunakan sistem desain Material 3 dari Flutter.

## 🛠️ Teknologi yang Digunakan

- Flutter
- Dart
- Material Design 3
- Visual Studio Code

## 📁 Struktur Project

```text
lib/
├── main.dart
├── layouts/
│   └── main_layout.dart
├── widgets/
│   └── app_drawer.dart
└── pages/
    ├── home_page.dart
    ├── profile_page.dart
    └── setting_page.dart

assets/
├── fonts/
│   └── FontdinerSwanky-Regular.ttf
└── images/
    └── profile.jpg
```

### Fungsi File dan Folder

| File/Folder | Fungsi |
|---|---|
| `main.dart` | Titik awal aplikasi serta konfigurasi tema dan navigasi. |
| `layouts/main_layout.dart` | Layout bersama yang berisi AppBar, Drawer, FAB, Bottom Navigation Bar, dan body. |
| `widgets/app_drawer.dart` | Widget menu navigasi samping. |
| `pages/home_page.dart` | Halaman utama aplikasi. |
| `pages/profile_page.dart` | Halaman profil pengguna. |
| `pages/setting_page.dart` | Halaman pengaturan. |
| `assets/fonts/` | Menyimpan font kustom aplikasi. |
| `assets/images/` | Menyimpan gambar yang digunakan aplikasi. |

## 🚀 Menjalankan Project

### Prasyarat

Pastikan perangkat kamu sudah memiliki:

- Flutter SDK
- Dart SDK
- Visual Studio Code atau editor lain yang mendukung Flutter
- Emulator Android atau perangkat Android

### Langkah Instalasi

1. Clone repository:

   ```bash
   git clone <repository-url>
   ```

2. Masuk ke direktori project:

   ```bash
   cd <nama-folder-project>
   ```

3. Unduh dependency:

   ```bash
   flutter pub get
   ```

4. Jalankan aplikasi:

   ```bash
   flutter run
   ```

## 📚 Materi yang Dipelajari

- Struktur dasar aplikasi Flutter.
- Penggunaan `MaterialApp`, `ThemeData`, dan `Scaffold`.
- Penggunaan `AppBar`, `Drawer`, dan `BottomNavigationBar`.
- Pembuatan reusable widget menggunakan `StatelessWidget`.
- Penggunaan constructor, `super.key`, parameter `required`, dan variabel `final`.
- Penggunaan `Column`, `Center`, dan `Text` untuk menyusun antarmuka.
- Navigasi antarhalaman menggunakan `Navigator` dan named routes.
- Penggunaan `FloatingActionButton` dan `SnackBar`.
- Pengelolaan aset gambar dan font kustom.
- Pengorganisasian kode menggunakan struktur folder yang terpisah.

## 📝 Status Project

**Status: Dalam pengembangan dan pembelajaran.**

Project ini merupakan sarana belajar Flutter secara bertahap. Fitur, tampilan, dan struktur aplikasi dapat berubah seiring bertambahnya materi yang dipelajari.

## 📌 Code main.dart sebagai referensi

````dart
import 'package:flutter/material.dart';
import 'package:latihan_005_aplikasi_mobile/pages/setting_page.dart';
import '../pages/home_page.dart';
import '../pages/profile_page.dart';

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

      locale: const Locale('id', 'ID'), // Menambahkan locale untuk mengatur bahasa aplikasi

      // Menambahkan tema untuk mengatur tema aplikasi
      theme:ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.amberAccent
        ),
        // Menambahkan useMaterial3 untuk mengatur penggunaan Material Design 3
        useMaterial3: true,
        // Menambahkan fontFamily untuk mengatur font aplikasi
        fontFamily: "FontdinerSwanky",
      ),

      // Menambahkan darkTheme untuk mengatur tema gelap aplikasi
      darkTheme:ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.amberAccent,
          brightness: Brightness.dark
        ),
        // Menambahkan useMaterial3 untuk mengatur penggunaan Material Design 3
        useMaterial3: true,
        // Menambahkan fontFamily untuk mengatur font aplikasi
        fontFamily: "FontdinerSwanky",
      ),

      // Menambahkan themeMode untuk mengatur mode tema aplikasi (switch antara tema terang dan gelap)
      themeMode: ThemeMode.dark,

      // Menambahkan title untuk mengatur judul aplikasi
      title: 'Aplikasi Mahasiswa',

      // Menambahkan home untuk mengatur halaman utama aplikasi
      home: const HomePage(),

      // Menambahkan initialRoute untuk mengatur rute aplikasi, tapi karena kita sudah menggunakan home, 
      //maka initialRoute HomePage tidak perlu ditambahkan, disini saya kasih komentar untuk menandakan bahwa initialRoute Homepage 
      //tidak perlu ditambahkan
      initialRoute: '/',
      routes: {
        // '/': (context) => const HomePage(),

        // Menambahkan route untuk halaman profile
        '/profile': (context) => const ProfilePage(),

        '/setting': (context) => const SettingPage(),
      },
    );
  }
}
````

---

Developed as part of Flutter learning journey.
