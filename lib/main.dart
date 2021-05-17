import 'package:barcodeflutter/screens/scannerScreen.dart';
import 'package:barcodeflutter/screens/generateScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/scanner': (BuildContext context) => ScannerScreen(),
        '/generate': (BuildContext context) => GenerateScreen(),
      },
      home: ScannerScreen(),
    );
  }
}
