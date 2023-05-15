import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class PageTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Clasify Transaction',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Dolore magna sint anim irure in dolor ad sit.Et eiusmod labore minim ipsum sunt tempor.',
              style: TextStyle(fontSize: 10, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
