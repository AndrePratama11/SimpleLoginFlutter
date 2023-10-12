// Kelas AppColor berisi pengaturan warna yang digunakan dalam aplikasi.
import 'package:flutter/material.dart';

class AppColor {
  static LinearGradient primaryGradient = LinearGradient(
    colors: [primary, Color(0xFF0F50C6)],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
  static Color primary = Color(0xFF266EF1);
  static Color primarySoft = Color(0xFF548DF3);
  static Color primaryExtraSoft = Color(0xFFEFF3FC);
  static Color secondary = Color(0xFF1B1F24);
  static Color secondarySoft = Color(0xFF9D9D9D);
  static Color secondaryExtraSoft = Color(0xFFE9E9E9);
  static Color error = Color(0xFFD00E0E);
  static Color success = Color(0xFF16AE26);
  static Color warning = Color(0xFFEB8600);
}

// Konstanta warna
const Color biru = Color(0xFF266EF1);
const Color kuning = Color(0xFFffb523);
const Color kuningdua = Color(0xFFFFF6C3);
const Color merah = Color(0xFFc13124);
const Color merahdua = Color(0xFFc13124);
const Color greyone = Color(0xFF7F8487);
const Color greytwo = Color(0xFFEEEEEE);
const Color orange = Color(0xFFCC8053);
const Color lightsky = const Color(0xFFA6C0FF);
const Color whiteshade = const Color(0xFFF8F9FA);
const Color blue = const Color(0xFF233197);
const Color lightblueshade = const Color(0xFF758CC8);
const Color grayshade = const Color(0xFF9FA4AF);
const Color lightblue = const Color(0xFF4B68D1);
const Color blackshade = const Color(0xFF555555);

// Gaya teks
var Splash = TextStyle(
  fontSize: 24,
  fontFamily: 'SFProdisplay',
  color: Colors.white,
  fontWeight: FontWeight.bold,
);

var headingsatu = TextStyle(
  fontSize: 18,
  fontFamily: 'SFProdisplay',
  fontWeight: FontWeight.bold,
);

var tombol = TextStyle(
  fontSize: 14,
  fontFamily: 'SFProdisplay',
  color: Colors.white,
  fontWeight: FontWeight.normal,
);

var headingdua = TextStyle(
  fontSize: 14,
  fontFamily: 'SFProdisplay',
  color: AppColor.secondarySoft,
  fontWeight: FontWeight.normal,
);

var headingtiga = TextStyle(
  fontSize: 14,
  fontFamily: 'SFProdisplay',
  fontWeight: FontWeight.normal,
);

var headingempat = TextStyle(
  fontSize: 12,
  fontFamily: 'SFProdisplay',
  fontWeight: FontWeight.normal,
);

var alert = TextStyle(
  fontSize: 14,
  fontFamily: 'SFProdisplay',
  color: Colors.red,
  fontWeight: FontWeight.normal,
);

var alertSukses = TextStyle(
  fontSize: 14,
  fontFamily: 'SFProdisplay',
  color: biru,
  fontWeight: FontWeight.normal,
);

var splashscreen = TextStyle(
  fontSize: 14,
  fontFamily: 'SFProdisplay',
  color: Colors.white,
  fontWeight: FontWeight.normal,
);
