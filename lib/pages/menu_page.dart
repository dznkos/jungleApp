import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
              'Cheesse, Peperoni, Ham, Green pepper,Green pepper, Green pepper,Green pepper,Green pepper, Green pepper, Green pepper,Green pepper',
              25.99,
              ''),
          ListPizza('American Pizza', 'Cheesse, Peperoni & Ham', 32.25, ''),
          ListPizza(
              'Italian Pizza', 'Cheesse, Onions, Ham, Green pepper', 19.00, ''),
          ListPizza('Hawaiian Pizza', 'Pineapple, Cheese, Ham', 22.99, ''),
          ListPizza('Romani Pizza', 'Cheesse, Peperoni, Ham, Green pepper',
              25.99, ''),
          ListPizza('France Pizza', 'Cheesse, Peperoni & Ham', 32.25, ''),
          ListPizza(
              'Irak Pizza', 'Cheesse, Onions, Ham, Green pepper', 19.00, ''),
          ListPizza('China Pizza', 'Pineapple, Cheese, Ham', 22.99, ''),
          ListPizza('Hungria Pizza', 'Cheesse, Peperoni & Ham', 32.25, ''),
          ListPizza('Mongolia Pizza', 'Cheesse, Onions, Ham, Green pepper',
              19.00, ''),
          ListPizza('Japan Pizza', 'Pineapple, Cheese, Ham', 22.99, ''),
        ],
      )),
    );
  }
}

class ListPizza extends StatelessWidget {
  final String name;
  final String descripcion;
  final double price;
  final String imageUrl;

  const ListPizza(this.name, this.descripcion, this.price, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      child: Card(
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                width: size.width * .4,
                height: 150,
                child: (imageUrl.length > 0)
                    ? NetworkImage('$imageUrl')
                    : Image.asset(
                        'assets/no-image.png',
                        fit: BoxFit.cover,
                      )),
            Container(
              padding: EdgeInsets.all(6),
              width: size.width * .45,
              height: 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${name}',
                    style: TextStyle(color: Colors.red[600], fontSize: 21),
                  ),
                  Text('S/ ${price}',
                      style: TextStyle(color: Colors.orange[800])),
                  // incompleto mostrar mas texto en scroll
                  Text(' ${descripcion} ', softWrap: true),
                ],
              ),
            ),
            Container(
              width: size.width * 0.12,
              height: 150,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    icon: Icon(Icons.keyboard_arrow_right),
                    color: Colors.grey,
                    iconSize: 25,
                    onPressed: () {
                      showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          builder: (context) {
                            return Container(
                              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                              height: MediaQuery.of(context).size.height * 0.60,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25.0),
                                    topRight: Radius.circular(25.0),
                                  )),
                              child: Column(
                                children: [
                                  Center(
                                    child: Text(
                                      'SELECT SIZE',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Column(
                                        children: [
                                          ClipOval(
                                            child: Material(
                                              color:
                                                  Colors.grey[200], // button color
                                              child: InkWell(
                                                splashColor:
                                                    Colors.orange, // inkwell color
                                                child: SizedBox(
                                                    width: 56,
                                                    height: 56,
                                                    child: Center(child: Text('XS', style: TextStyle( fontWeight: FontWeight.bold))) ),
                                                onTap: () {},
                                              ),
                                            ),
                                          ),
                                          Text("8'", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold))
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          ClipOval(
                                            child: Material(
                                              color:
                                                  Colors.grey[200], // button color
                                              child: InkWell(
                                                splashColor:
                                                    Colors.orange, // inkwell color
                                                child: SizedBox(
                                                    width: 56,
                                                    height: 56,
                                                    child: Center(child: Text('S', style: TextStyle( fontWeight: FontWeight.bold))) ),
                                                onTap: () {},
                                              ),
                                            ),
                                          ),
                                          Text("10'", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold))
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          ClipOval(
                                            child: Material(
                                              color:
                                                  Colors.grey[200], // button color
                                              child: InkWell(
                                                splashColor:
                                                    Colors.orange, // inkwell color
                                                child: SizedBox(
                                                    width: 56,
                                                    height: 56,
                                                    child: Center(child: Text('M', style: TextStyle( fontWeight: FontWeight.bold))) ),
                                                onTap: () {},
                                              ),
                                            ),
                                          ),
                                          Text("12'", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold))
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          ClipOval(
                                            child: Material(
                                              color:
                                                  Colors.grey[200], // button color
                                              child: InkWell(
                                                splashColor:
                                                    Colors.orange, // inkwell color
                                                child: SizedBox(
                                                    width: 56,
                                                    height: 56,
                                                    child: Center(child: Text('L', style: TextStyle( fontWeight: FontWeight.bold)),) ),
                                                onTap: () {},
                                              ),
                                            ),
                                          ),
                                          Text("14'", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold))
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          ClipOval(
                                            child: Material(
                                              color:
                                                  Colors.grey[200], // button color
                                              child: InkWell(
                                                splashColor:
                                                    Colors.orange[500], // inkwell color
                                                child: SizedBox(
                                                    width: 56,
                                                    height: 56,
                                                    child: Center(child: Text('XL', style: TextStyle( fontWeight: FontWeight.bold),)) ),
                                                onTap: () {},
                                              ),
                                            ),
                                          ),
                                          Text("16'", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),)
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            );
                          });
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
