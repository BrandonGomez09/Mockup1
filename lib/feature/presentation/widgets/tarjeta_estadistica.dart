import 'package:flutter/material.dart';

class TarjetaEstadistica extends StatelessWidget {
  final String titulo;
  final String valor;
  final Color colorIcono;

  TarjetaEstadistica({
    super.key,
    required this.titulo,
    required this.valor,
    this.colorIcono = Colors.blue,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              titulo,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black54,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              valor,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: colorIcono,
              ),
            ),
          ],
        ),
      ),
    );
  }
}