import 'package:flutter/material.dart';
import 'section_card.dart';
import 'services_list.dart';

// Clase que define la pantalla principal de Parque Warner
class ParqueWarnerScreen extends StatelessWidget {
  const ParqueWarnerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // Barra fija superior que contiene el logo y botones
          Container(
            color: Colors.blue.shade900,
            padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
            child: Column(
              children: [
                // Logo del parque
                Image.asset(
                  'assets/logoo.jpg',
                  height: 180,
                ),
                // Botones de "Buscar" y "Mis Entradas"
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // Botón "Buscar" con icono
                      Expanded(
                        child: ElevatedButton.icon(
                          icon: const Icon(Icons.search),
                          onPressed: () {}, // Acción al presionar el botón
                          label: const Text('Buscar'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.yellow,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10), // Espacio entre botones
                      // Botón "Mis Entradas" con icono
                      Expanded(
                        child: ElevatedButton.icon(
                          icon: const Icon(Icons.confirmation_num_outlined),
                          onPressed: () {}, // Acción al presionar el botón
                          label: const Text('Mis Entradas'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.yellow,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10), // Espacio debajo de los botones
              ],
            ),
          ),

          // Contenido desplazable donde se muestran las secciones y servicios
          Expanded(
            child: Container(
              color: Colors.grey.shade200,
              child: ListView(
                padding: const EdgeInsets.all(16.0),
                children: const [
                  // Cards de secciones como "Atracciones" y "Restaurantes"
                  Row(
                    children: [
                      Expanded(child: SectionCard(title: 'Atracciones', imagePath: 'assets/atracciones.jpg')),
                      SizedBox(width: 8), // Espacio entre cards
                      Expanded(child: SectionCard(title: 'Restaurantes', imagePath: 'assets/restaurante.jpg')),
                    ],
                  ),
                  SizedBox(height: 8), // Espacio entre filas de cards
                  SectionCard(title: 'Mapa', imagePath: 'assets/mapa.jpeg'),
                  SizedBox(height: 16), // Espacio antes de la lista de servicios

                 
                  ServicesList(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
