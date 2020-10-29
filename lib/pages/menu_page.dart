import 'package:flutter/material.dart';
import 'package:jungle_app/widgets/list_pizza.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('City Pizza')),
        actions: [Icon(Icons.arrow_right)],
      ),
      body: Container(
          child: ListView(
        children: [
          ListPizza(
              'Cheese Pizza',
              'Descripcion pizza, Descripcion pizza, Descripcion pizza',
              25.99,
              ''),
          ListPizza('American Pizza', 'Descripcion pizza, Descripcion pizza',
              32.25, ''),
          ListPizza('Italian Pizza', 'Descripcion pizza, Descripcion pizza',
              19.00, ''),
          ListPizza('Hawaiian Pizza', 'Descripcion pizza, Descripcion pizza',
              22.99, ''),
          ListPizza('Romani Pizza', 'Descripcion pizza, Descripcion pizza',
              25.99, ''),
          ListPizza('France Pizza', 'Descripcion pizza, Descripcion pizza',
              32.25, ''),
          ListPizza(
              'Irak Pizza', 'Descripcion pizza, Descripcion pizza', 19.00, ''),
          ListPizza(
              'China Pizza', 'Descripcion pizza, Descripcion pizza', 22.99, ''),
          ListPizza('Hungria Pizza', 'Descripcion pizza, Descripcion pizza',
              32.25, ''),
          ListPizza('Hawaiian Pizza', 'Descripcion pizza, Descripcion pizza',
              19.00, ''),
          ListPizza(
              'Japan Pizza', 'Descripcion pizza, Descripcion pizza', 22.99, ''),
          ListPizza('Hungria Pizza', 'Descripcion pizza, Descripcion pizza',
              32.25, ''),
          ListPizza('Hawaiian Pizza', 'Descripcion pizza, Descripcion pizza',
              19.00, ''),
          ListPizza(
              'Japan Pizza', 'Descripcion pizza, Descripcion pizza', 22.99, ''),
        ],
      )),
    );
  }
}
