// Import library untuk Flutter
import 'package:absensi/pages/dashboard.dart';
import 'package:absensi/pages/homepage.dart';
import 'package:absensi/pages/login.dart';
import 'package:absensi/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

/// Fungsi main() yang merupakan entry point untuk aplikasi Flutter.
void main() {
  // Memastikan bahwa Flutter binding sudah diinisialisasi.
  WidgetsFlutterBinding.ensureInitialized();

  // Mengatur preferensi orientasi perangkat menjadi potret (portrait).
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);

  // Menjalankan aplikasi dengan widget MyApp sebagai root widget.
  runApp(const MyApp());
}

// Class MyApp adalah StatelessWidget yang membangun dan mengonfigurasi aplikasi.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Menghilangkan tampilan banner debug pada aplikasi.
      debugShowCheckedModeBanner: false,
      
      // Mengatur halaman awal (home) aplikasi ke LoginPage().
      home: LoginPage(),

      // Builder untuk mengatur ukuran teks aplikasi ke faktor 1.0.
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
          child: child!,
        );
      },
    );
  }
}
