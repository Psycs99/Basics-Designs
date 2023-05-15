import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class BasicDesignScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        // imagen central
        const Image(image: AssetImage('assets/LandScape.jpg')),
        // Titulo
        Title(),
        // Buttom Section
        ButtomSection(),
        // Description
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: const Text(
              'Incididunt nulla aliqua reprehenderit sint sint deserunt quis Lorem qui esse et aliquip veniam. Enim anim sit irure reprehenderit id ipsum incididunt voluptate adipisicing esse. Irure magna mollit velit ipsum ea. Proident aute aute exercitation cillum consequat irure enim in dolor reprehenderit proident. Eiusmod pariatur et do nulla elit pariatur pariatur.'),
        ),
      ],
    ));
  }
}

// ignore: use_key_in_widget_constructors
class Title extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Cerro Fitz Roy, Chalten',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Santa Cruz, Argentina',
                style: TextStyle(color: Colors.black54),
              ),
            ],
          ),
          // Separador
          Expanded(child: Container()),
          // Iconos
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text('95'),
        ],
      ),
    );
  }
}

// ignore: use_key_in_widget_constructors
class ButtomSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const CustomButtom(
            icono: Icons.phone,
            texto: 'Call',
          ),
          const CustomButtom(
            icono: Icons.route,
            texto: 'Route',
          ),
          const CustomButtom(
            icono: Icons.share,
            texto: 'Share',
          ),
        ],
      ),
    );
  }
}

class CustomButtom extends StatelessWidget {
  const CustomButtom({
    Key? key,
    required this.icono,
    required this.texto,
  }) : super(key: key);

  final IconData icono;
  final String texto;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'home_screen');
      },
      child: Column(
        children: [
          Icon(
            icono,
            color: Colors.blue,
          ),
          Text(
            texto,
            style: const TextStyle(color: Colors.blue),
          ),
        ],
      ),
    );
  }
}
