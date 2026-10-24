# Aplikasi Mahasiswa

Aplikasi mobile sederhana yang dikembangkan menggunakan Flutter sebagai sarana belajar pengembangan aplikasi Android dengan Dart.

## 📌 Tentang Project

Project ini berfokus pada pembelajaran dasar Flutter, khususnya penggunaan `Scaffold`, pembuatan reusable widget, pengaturan tema aplikasi, serta navigasi antarhalaman menggunakan named routes.

## ✨ Fitur

- **Home Page** — Halaman utama aplikasi.
- **Profile Page** — Halaman profil yang dapat diakses melalui menu navigasi.
- **Reusable Main Layout** — Menggunakan layout bersama untuk AppBar, Drawer, dan konten halaman.
- **Navigation Drawer** — Menu navigasi untuk berpindah halaman Home dan Profile.
- **Theme Configuration** — Pengaturan tema terang dan gelap menggunakan `ThemeData`.
- **Custom Font** — Menggunakan font Fontdiner Swanky.
- **Material Design 3** — Menggunakan sistem desain Material 3 dari Flutter.

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
    └── profile_page.dart
```

| File | Fungsi |
|---|---|
| `main.dart` | Titik awal aplikasi dan konfigurasi tema serta navigasi. |
| `main_layout.dart` | Layout bersama yang berisi AppBar, Drawer, dan body. |
| `app_drawer.dart` | Widget menu navigasi untuk berpindah halaman. |
| `home_page.dart` | Halaman utama aplikasi. |
| `profile_page.dart` | Halaman profil pengguna. |

## 🚀 Menjalankan Project

### Prasyarat

Pastikan Flutter SDK dan Dart sudah terpasang di komputer.

### Langkah instalasi

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
- Penggunaan `MaterialApp` dan `ThemeData`.
- Penggunaan `Scaffold`, `AppBar`, dan `Drawer`.
- Pembuatan reusable widget menggunakan `StatelessWidget`.
- Penggunaan constructor, parameter `required`, dan variabel `final`.
- Navigasi antarhalaman menggunakan `Navigator` dan named routes.
- Pengelolaan struktur folder agar kode lebih terorganisasi.

## 📝 Status Project

**Status:** Dalam pengembangan dan pembelajaran.

Fitur dan struktur aplikasi dapat berubah seiring proses belajar Flutter.

## 📌 Code main.dart sebagai referensi

````dart
import 'package:flutter/material.dart';
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
        '/profile': (context) => const ProfilePage()
      },
    );
  }
}
````

---

Developed as part of Flutter learning journey.
