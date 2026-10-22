
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'view/tasbih_home.dart';

void main() {
  runApp(const TasbihApp());
}

class TasbihApp extends StatelessWidget {
  const TasbihApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tasbih Digital',
      home: const TasbihHome(),
    );
  }
}
