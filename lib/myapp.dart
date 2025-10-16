// lib/myapp.dart

import 'package:flutter/material.dart';
import 'package:mockup1/feature/presentation/pages/home.dart'; // Asegúrate que el nombre del proyecto sea correcto

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dashboard Adaptable',
      home: Home(), // La pantalla de inicio ahora es Home
    );
  }
}