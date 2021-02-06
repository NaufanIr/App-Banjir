import 'package:banjir_app/Beranda.dart';
import 'package:banjir_app/Evakuasi.dart';
import 'package:banjir_app/Pengaturan.dart';
import 'package:banjir_app/Test.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: NavBar(),
    );
  }
}

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;

  List<Widget> _navMenu = [Beranda(), Evakuasi(), Pengaturan()];

  void onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _navMenu.elementAt(_selectedIndex),
      ),
      extendBody: true,
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(bottom: 10, left: 5, right: 5),
        child: ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(50.0),
          ),
          child: BottomNavigationBar(
            //backgroundColor: Colors.amber,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                      _selectedIndex == 0 ? Icons.home : Icons.home_outlined),
                  label: "Beranda"),
              BottomNavigationBarItem(
                icon:
                    Icon(_selectedIndex == 1 ? Icons.info : Icons.info_outline),
                label: "Evakuasi",
              ),
              BottomNavigationBarItem(
                icon: Icon(_selectedIndex == 2
                    ? Icons.settings
                    : Icons.settings_outlined),
                label: "Pengaturan",
              ),
            ],
            iconSize: 28,
            currentIndex: _selectedIndex,
            onTap: onItemTap,
          ),
        ),
      ),
    );
  }
}
