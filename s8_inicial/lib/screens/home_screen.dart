import 'package:flutter/material.dart';
import 'package:s8_inicial/widgets/background.dart';
import 'package:s8_inicial/widgets/card_table.dart';
import 'package:s8_inicial/widgets/custom_bottom.dart';
import 'package:s8_inicial/widgets/page_titles.dart';

// ignore: use_key_in_widget_constructors
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // background
          const Background(),
          // Home body
          _HomeBody(),
        ],
      ),
      bottomNavigationBar: CustomBottom(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Titles
          PageTitle(),
          // Card Table
          CardTable(),
        ],
      ),
    );
  }
}
