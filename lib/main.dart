import 'package:flutter/material.dart';
import 'halaman_menu.dart';

void main() => runApp(const AplikasiUmkm());

class AplikasiUmkm extends StatelessWidget {
  const AplikasiUmkm({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Warung Nusantara',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepOrange,
          brightness: Brightness.dark,
        ),
      ),
      themeMode: ThemeMode.system,
      home: const HalamanMenu(),
    );
  }
}