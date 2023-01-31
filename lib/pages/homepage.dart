import 'package:absensi/pages/dashboard.dart';
import 'package:absensi/style/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _current = 0;

  int pageIndex = 0;

  List<Widget> pages = [
    Dashboard(),
    Dashboard(),
    Dashboard(),
    Dashboard(),
    // Berita(),
    // PusatBantuan(),
    // HistoryPendaftaran(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: biru,
          elevation: 30,
          //Floating action button on Scaffold
          onPressed: () {
            //code to execute on button press
          },
          child: Icon(Icons.camera), //icon inside button
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: getBody(),
        bottomNavigationBar: getFooter(),
      ),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: pageIndex,
      children: pages,
    );
  }

  Widget getFooter() {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
        child: GNav(
          backgroundColor: Colors.white,
          color: greyone,
          activeColor: Colors.white,
          tabBackgroundColor: biru,
          gap: 0,
          onTabChange: (index) {
            selectedTab(index);
          },
          padding: EdgeInsets.all(10),
          tabs: const [
            GButton(
              icon: Icons.home,
              // text: 'Dashboard',
              textSize: 8,
              textStyle: TextStyle(
                  fontSize: 14,
                  fontFamily: 'SFProdisplay',
                  color: Colors.white),
            ),
            GButton(
              icon: Icons.leave_bags_at_home,
              // text: 'Cuti',
              textSize: 8,
              textStyle: TextStyle(
                  fontSize: 14,
                  fontFamily: 'SFProdisplay',
                  color: Colors.white),
            ),
            GButton(
              icon: Icons.history,
              // text: 'History',
              textSize: 8,
              textStyle: TextStyle(
                  fontSize: 14,
                  fontFamily: 'SFProdisplay',
                  color: Colors.white),
            ),
            GButton(
              icon: Icons.people,
              // text: 'Profil',
              textSize: 8,
              textStyle: TextStyle(
                  fontSize: 14,
                  fontFamily: 'SFProdisplay',
                  color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }

  selectedTab(index) {
    setState(() {
      pageIndex = index;
    });
  }
}
