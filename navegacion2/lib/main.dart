import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Navegación con nombres de rutas',
      initialRoute: '/',
      routes: {
        '/': (context) => const PantallaUno(),
        '/segundapantalla': (context) => const PantallaDos(),
      },
    ),
  );
}

class PantallaUno extends StatelessWidget {
  const PantallaUno({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla 1'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/segundapantalla');
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
          ),
          child: const Text('Clic para mostrar pantalla 2 >>'),
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
        title: const Text('Segunda Pantalla'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
          ),
          child: const Text('<< Regresar'),
        ),
      ),
    );
  } 
}