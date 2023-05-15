import 'dart:ui';

import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class CardTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(children: [
          _SingleCard(
            icono: Icons.widgets_outlined,
            color: Colors.blue,
            nombre: 'General',
          ),
          _SingleCard(
            icono: Icons.bus_alert,
            color: Colors.purple,
            nombre: 'Transport',
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            icono: Icons.shopping_bag,
            color: Colors.pink,
            nombre: 'Shopping',
          ),
          _SingleCard(
            icono: Icons.airplane_ticket_outlined,
            color: Colors.orange,
            nombre: 'Bills',
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            icono: Icons.movie_creation_outlined,
            color: Colors.indigo,
            nombre: 'Entretaiment',
          ),
          _SingleCard(
            icono: Icons.fastfood_outlined,
            color: Colors.green,
            nombre: 'Food',
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            icono: Icons.car_rental,
            color: Colors.brown,
            nombre: 'Car',
          ),
          _SingleCard(
            icono: Icons.house_outlined,
            color: Colors.red,
            nombre: 'House',
          ),
        ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icono;
  final Color color;
  final String nombre;

  const _SingleCard(
      // ignore: unused_element
      {super.key,
      required this.icono,
      required this.color,
      required this.nombre});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'scroll_screen');
      },
      child: Container(
        margin: const EdgeInsets.all(20),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 5,
              sigmaY: 5,
            ),
            child: Container(
              //margin: const EdgeInsets.all(20),
              height: 180,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(62, 66, 107, 0.7),
                  borderRadius: BorderRadius.circular(30)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: color,
                    radius: 30,
                    child: Icon(
                      icono,
                      size: 25,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    nombre,
                    style: const TextStyle(color: Colors.blue, fontSize: 15),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
