import 'package:flutter/material.dart';
import 'package:mockup1/feature/presentation/widgets/tarjeta_estadistica.dart';

class SeccionEstadisticas extends StatelessWidget {
  const SeccionEstadisticas({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return Column(
            children: [
              TarjetaEstadistica(titulo: 'Tareas Completadas', valor: '125', colorIcono: Colors.green),
              const SizedBox(height: 12),
              TarjetaEstadistica(titulo: 'Horas de Enfoque', valor: '42.5h', colorIcono: Colors.orange),
              const SizedBox(height: 12),
              TarjetaEstadistica(titulo: 'Proyectos Activos', valor: '3', colorIcono: Colors.purple),
            ],
          );
        } else {

          return Row(
            children: [
              Expanded(
                flex: 5,
                child: TarjetaEstadistica(titulo: 'Tareas Completadas', valor: '125', colorIcono: Colors.green),
              ),
              const SizedBox(width: 12),
              Expanded(
                flex: 3,
                child: TarjetaEstadistica(titulo: 'Horas de Enfoque', valor: '42.5h', colorIcono: Colors.orange),
              ),
              const SizedBox(width: 12),
              Expanded(
                flex: 1,
                child: TarjetaEstadistica(titulo: 'Proyectos Activos', valor: '3', colorIcono: Colors.purple),
              ),
            ],
          );
        }
      },
    );
  }
}