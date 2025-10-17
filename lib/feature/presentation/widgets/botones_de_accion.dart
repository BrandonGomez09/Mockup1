// lib/feature/presentation/widgets/botones_de_accion.dart

import 'package:flutter/material.dart';

class BotonesDeAccion extends StatelessWidget {
  const BotonesDeAccion({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Row(
        children: [
          ElevatedButton(
            onPressed: () {},
            child: const Text('Ver Reporte'),
          ),
          const Spacer(), // El resorte que los separa
          OutlinedButton(
            onPressed: () {},
            child: const Text('Exportar'),
          ),
        ],
      ),
    );
  }
}