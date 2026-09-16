import 'package:flutter/material.dart';
import 'package:gct_bwp/view/splashscreen.dart';

void main() {
  runApp(const gct());
}

class gct extends StatefulWidget {
  const gct({super.key});

  @override
  State<gct> createState() => _gctState();
}

class _gctState extends State<gct> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SplashScreen());
  }
}
