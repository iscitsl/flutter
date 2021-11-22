import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navegación básica con Flutter',
    home: PantallaUno(),
  ));
}

class PantallaUno extends StatelessWidget {
  const PantallaUno({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Primera PANTALLA'),
      ),
      body: Center(
        child: TextButton(
          child: const Text('Clic aquí para mostrar la segunda pantalla >>'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PantallaDos()),
            );
          },
        ),
      ),
    );
  }
}

class PantallaDos extends StatelessWidget {
  const PantallaDos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Segunda PANTALLA"),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('<< Regresar'),
        ),
      ),
    );
  }
} 