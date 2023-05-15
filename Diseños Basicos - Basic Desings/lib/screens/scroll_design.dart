import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class ScrollScreen extends StatelessWidget {
  final boxDecoration = const BoxDecoration(
    gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: [
          0.5,
          0.5
        ],
        colors: [
          Color(0xff5EE8C5),
          Color(0xff30BAD6),
        ]),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: boxDecoration,
      child: PageView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        children: [
          Page1(),
          Page2(),
        ],
      ),
    ));
  }
}

// ignore: use_key_in_widget_constructors
class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // background el fondo
        Background(),
        // contenido principal, las columnas
        MainContent(),
      ],
    );
  }
}

// ignore: use_key_in_widget_constructors
class Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff30BAD6),
      height: double.infinity,
      alignment: Alignment.topCenter,
      child: const Image(
        image: AssetImage('assets/scroll-1.png'),
      ),
    );
  }
}

// ignore: use_key_in_widget_constructors
class MainContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    final textStyle = TextStyle(
        fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white);
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20,
          ),
          Text(
            '11º',
            style: textStyle,
          ),
          Text('Miercoles', style: textStyle),
          //todo: expanded
          Expanded(
              child: Container(
                  //color: Colors.red,
                  )),
          const Icon(
            Icons.keyboard_arrow_down_outlined,
            size: 100,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}

// ignore: use_key_in_widget_constructors
class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff30BAD6),
      child: Center(
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, 'basic_design');
          },
          style: TextButton.styleFrom(
            backgroundColor: Colors.blue,
            shape: const StadiumBorder(),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: Text(
              'Bienvenido',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
