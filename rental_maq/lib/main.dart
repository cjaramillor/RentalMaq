import 'package:flutter/material.dart';
import 'package:rental_maq/config/menu/menu_item.dart';
import 'package:rental_maq/presentation/screen/home/home_screen.dart';

import 'config/theme/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 4).getTheme(),
      home: Scaffold(
        body: Center(child: HomeScreen()),
      ),
    );
  }
}
