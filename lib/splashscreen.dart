// Import library yang diperlukan
import 'dart:async';
import 'package:absensi/pages/homepage.dart';
import 'package:absensi/pages/login.dart';
import 'package:absensi/style/constant.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Class SplashScreen adalah StatefulWidget yang digunakan sebagai halaman pembuka aplikasi.
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => SplashScreenState();
}

// Class SplashScreenState adalah State dari SplashScreen yang mengatur tampilan dan logika halaman pembuka.
class SplashScreenState extends State<SplashScreen> {
  static const String KEYLOGIN = "email";

  @override
  void initState() {
    super.initState();
    WhereToGo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: biru,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Loading sedela...',
                      style: splashscreen,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CircularProgressIndicator(
                      backgroundColor: Colors.amber,
                      valueColor: AlwaysStoppedAnimation(Colors.white),
                      strokeWidth: 2,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  // Fungsi WhereToGo digunakan untuk menentukan ke mana aplikasi harus pergi setelah tampilan SplashScreen.
  void WhereToGo() async {
    var sharedPref = await SharedPreferences.getInstance();
    var isLoggedIn = sharedPref.getBool("email");

    Timer(
      Duration(seconds: 2),
      () {
        if (isLoggedIn != null) {
          if (isLoggedIn) {
            // Jika pengguna sudah login, navigasi ke halaman Homepage.
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => Homepage(),
              ),
            );
          } else {
            // Jika pengguna belum login, navigasi ke halaman LoginPage.
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => LoginPage(),
              ),
            );
          }
        } else {
          // Jika belum ada informasi login, navigasi ke halaman LoginPage.
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => LoginPage(),
            ),
          );
        }
      },
    );
  }
}
