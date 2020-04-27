import 'package:flutter/material.dart';
import 'package:header_style/src/pages/emergency_page.dart';
// import 'package:header_style/src/pages/pinterest_page.dart';
// import 'package:header_style/src/pages/slideshow_page.dart;
// import 'package:header_style/src/pages/graficas_circulares_page.dart';
// import 'package:header_style/src/challenges/cuadrado_animado_page.dart';
// import 'package:header_style/src/pages/animaciones_page.dart';
// import 'package:header_style/src/pages/headers_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Diseños app',
        home: EmergencyPage());
  }
}
