import 'package:flutter/material.dart';

// Clase que representa la lista de servicios con iconos y títulos
class ServicesList extends StatelessWidget {
  const ServicesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Cada ListTile representa un servicio individual
        ListTile(
          leading: const Icon(Icons.shopping_bag_rounded), // Icono del servicio
          title: const Text('Tienda'), // Título del servicio
          onTap: () {}, // Acción al presionar el servicio
        ),
        ListTile(
          leading: const Icon(Icons.map_outlined),
          title: const Text('Cómo llegar'),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.calendar_month),
          title: const Text('Horario de apertura'),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.room_service_sharp),
          title: const Text('Otros servicios'),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.receipt_rounded),
          title: const Text('Normas de funcionamiento'),
          onTap: () {},
        ),
      ],
    );
  }
}
