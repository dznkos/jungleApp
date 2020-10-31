import 'package:flutter/material.dart';
import 'package:jungle_app/widgets/fondo_pizza.dart';
import 'package:jungle_app/widgets/page_main.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        FondoPizza(),
      ],
    ));
  }
}
