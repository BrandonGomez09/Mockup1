    // lib/feature/presentation/pages/home.dart

    import 'package:flutter/material.dart';
    import 'package:mockup1/feature/presentation/widgets/tarjeta_estadistica.dart';

    class Home extends StatelessWidget {
      const Home({super.key});

      @override
      Widget build(BuildContext context) {
        return Scaffold(

          backgroundColor: Colors.orange  ,
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Center(
                    child: Text(
                      'Dashboard de Brandon Gomez',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 24), // Espacio vertical

                  LayoutBuilder(
                    builder: (context, constraints) {
                      if (constraints.maxWidth < 600) {
                        // Vista para pantallas pequeñas
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
                        // Vista para pantallas grandes
                        return Row(
                          children: [
                            Flexible(
                              flex: 5,
                              child: TarjetaEstadistica(titulo: 'Tareas Completadas', valor: '125', colorIcono: Colors.green),
                            ),
                            const SizedBox(width: 12),
                            Flexible(
                              flex: 3,
                              child: TarjetaEstadistica(titulo: 'Horas de Enfoque', valor: '42.5h', colorIcono: Colors.orange),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: TarjetaEstadistica(titulo: 'Proyectos Activos', valor: '3', colorIcono: Colors.purple),
                            ),
                          ],
                        );
                      }
                    },
                  ),

                  const Spacer(),

                  Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text('Ver Reporte'),
                        ),
                        const Spacer(),
                        OutlinedButton(
                          onPressed: () {},
                          child: const Text('Exportar'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }
    }