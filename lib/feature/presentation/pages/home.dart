// lib/feature/presentation/pages/home.dart

import 'package:flutter/material.dart';
import 'package:mockup1/feature/presentation/widgets/botones_de_accion.dart';
import 'package:mockup1/feature/presentation/widgets/seccion_estadisticas.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // 1. El Título
              const Center(
                child: Text(
                  'Dashboard de Brandon Gomez',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 24),

              const SeccionEstadisticas(),

              const Spacer(),

              const BotonesDeAccion(),
            ],
          ),
        ),
      ),
    );
  }
}