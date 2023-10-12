// Import library yang diperlukan
import 'package:absensi/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Class Dashboard adalah StatefulWidget yang digunakan untuk menampilkan halaman dashboard pengguna.
class Dashboard extends StatefulWidget {
  @override
  State<Dashboard> createState() => _DashboardState();
}

// Class _DashboardState adalah State dari Dashboard yang mengatur tampilan dan logika halaman dashboard.
class _DashboardState extends State<Dashboard> {
  String? email = "";

  @override
  void initState() {
    super.initState();
    getCred();
  }

  // Fungsi getCred digunakan untuk mendapatkan data email dari SharedPreferences.
  void getCred() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    setState(() {
      email = pref.getString("email");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('session'),
      ),
      body: ListView(
        children: <Widget>[
          Text('email : ${email}'),
          SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: () async {
              // Fungsi untuk membersihkan SharedPreferences dan kembali ke halaman login.
              SharedPreferences pref = await SharedPreferences.getInstance();
              await pref.clear();
              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(
                  builder: (context) => LoginPage(),
                ),
                ((route) => false),
              );
            },
            icon: Icon(Icons.h_mobiledata),
            label: Text('data'),
          )
        ],
      ),
    );
  }
}
