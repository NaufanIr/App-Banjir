import 'package:flutter/material.dart';

class Pengaturan extends StatefulWidget {
  @override
  _PengaturanState createState() => _PengaturanState();
}

class _PengaturanState extends State<Pengaturan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        toolbarHeight: 65,
        title: Text('PENGATURAN',
            style: TextStyle(
                color: Colors.blue,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w700)),
        backgroundColor: Colors.white,
      ),
    );
  }
}
