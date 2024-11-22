import 'dart:async';
import 'package:flutter/material.dart';
import 'parque_warner_screen.dart';

class PantallaInicial extends StatefulWidget {
  const PantallaInicial({super.key});

  @override
  _PantallaInicialState createState() => _PantallaInicialState();
}

class _PantallaInicialState extends State<PantallaInicial> {
  @override
  void initState() {
    super.initState();
    // Temporizador de 4 segundos para cambiar de pantalla
    Timer(const Duration(seconds: 4), () {
      // Navega automáticamente a ParqueWarnerScreen después de 4 segundos
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const ParqueWarnerScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Imagen de fondo en pantalla completa
          Image.asset(
            'assets/logowarner.jpg', // Cambia por la ruta de tu imagen
            fit: BoxFit.cover,
          ),
          // Círculo de carga centrado
          const Center(
            child: CircularProgressIndicator(
              color: Color.fromARGB(255, 255, 0, 0),
            ),
          ),
        ],
      ),
    );
  }
}
