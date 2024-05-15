import 'package:flutter/material.dart';

class SuggestionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sugerencias'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sugerencias para reducir el gasto de combustible:',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Text(
              'Mantener una velocidad constante para mejorar la eficiencia.', // Ejemplo de sugerencia
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}