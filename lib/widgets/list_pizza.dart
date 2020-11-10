import 'package:flutter/material.dart';

class ListPizza extends StatelessWidget {
  final String name;
  final String descripcion;
  final double price;
  final String imageUrl;

  const ListPizza(this.name, this.descripcion, this.price, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    final sizeH = MediaQuery.of(context).size.height;
    final sizeW =
        double.parse(MediaQuery.of(context).size.width.toString()) - 5;

    //print(' w: '+ size.width.toString() + ' , h: '+ size.height.toString());
    return Container(
      width: sizeW,
      child: Card(
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                padding: EdgeInsets.all(4),
                width: sizeW * .4,
                height: sizeH * .2,
                color: Colors.blue,
                child: FadeInImage(
                  fit: BoxFit.cover,
                  placeholder: AssetImage('assets/loading.gif'),
                  image: (imageUrl.length > 0
                      ? NetworkImage('$imageUrl')
                      : AssetImage('assets/no-image.png')),
                )),
            Container(
              padding: EdgeInsets.all(6),
              width: sizeW * .45,
              height: sizeH * .2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${name}',
                    style: TextStyle(color: Colors.red[600], fontSize: 21),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text('S/ ${price}',
                      style: TextStyle(color: Colors.orange[800])),
                  // incompleto mostrar mas texto en scroll
                  SizedBox(
                    height: 10,
                  ),
                  Text('${descripcion} ', softWrap: true),
                ],
              ),
            ),
            Container(
              height: sizeH * .2,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  IconButton(
                    icon: Icon(Icons.add),
                    color: Colors.red,
                    iconSize: 22,
                    onPressed: () {
                      buildShowModalBottomSheet(context);
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

  Future buildShowModalBottomSheet(BuildContext context) {
    //final size = MediaQuery.of(context).size;

    return showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        builder: (context) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            height: MediaQuery.of(context).size.height * 0.55,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.0),
                  topRight: Radius.circular(25.0),
                )),
            child: Column(
              children: [
                bottomsheetpizza(context),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  alignment: Alignment.center,
                  child: Text(
                    'SELECT SIZE',
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  // button Size
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        ClipOval(
                          child: Material(
                            color: Colors.grey[200], // button color
                            child: InkWell(
                              splashColor: Colors.orange, // inkwell color
                              child: SizedBox(
                                  width: 56,
                                  height: 56,
                                  child: Center(
                                      child: Text('XS',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)))),
                              onTap: () {},
                            ),
                          ),
                        ),
                        Text("8'",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                    Column(
                      children: [
                        ClipOval(
                          child: Material(
                            color: Colors.grey[200], // button color
                            child: InkWell(
                              splashColor: Colors.orange, // inkwell color
                              child: SizedBox(
                                  width: 56,
                                  height: 56,
                                  child: Center(
                                      child: Text('S',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)))),
                              onTap: () {},
                            ),
                          ),
                        ),
                        Text("10'",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                    Column(
                      children: [
                        ClipOval(
                          child: Material(
                            color: Colors.grey[200], // button color
                            child: InkWell(
                              splashColor: Colors.orange, // inkwell color
                              child: SizedBox(
                                  width: 56,
                                  height: 56,
                                  child: Center(
                                      child: Text('M',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)))),
                              onTap: () {},
                            ),
                          ),
                        ),
                        Text("12'",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                    Column(
                      children: [
                        ClipOval(
                          child: Material(
                            color: Colors.grey[200], // button color
                            child: InkWell(
                              splashColor: Colors.orange, // inkwell color
                              child: SizedBox(
                                  width: 56,
                                  height: 56,
                                  child: Center(
                                    child: Text('L',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                  )),
                              onTap: () {},
                            ),
                          ),
                        ),
                        Text("14'",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                    Column(
                      children: [
                        ClipOval(
                          child: Material(
                            color: Colors.grey[200], // button color
                            child: InkWell(
                              splashColor: Colors.orange[500], // inkwell color
                              child: SizedBox(
                                  width: 56,
                                  height: 56,
                                  child: Center(
                                      child: Text(
                                    'XL',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ))),
                              onTap: () {},
                            ),
                          ),
                        ),
                        Text(
                          "16'",
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                ), // end tamaños pizza
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    RaisedButton(
                        color: Colors.grey[300],
                        child: Text(
                          'CUSTOMIZE',
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {}),
                    RaisedButton(
                        color: Colors.red,
                        child: Text(
                          'ADD TO CART',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {}),
                  ],
                )
              ],
            ),
          );
        });
  }

  Widget bottomsheetpizza(BuildContext context) {
    final sizeW = MediaQuery.of(context).size.width;
    final sizeH = MediaQuery.of(context).size.height;

    return Container(
      width: sizeW,
      child: Card(
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                padding: EdgeInsets.all(4),
                width: sizeW * .45,
                height: sizeH * .2,
                color: Colors.blue,
                child: FadeInImage(
                  fit: BoxFit.cover,
                  placeholder: AssetImage('assets/loading.gif'),
                  image: (imageUrl.length > 0
                      ? NetworkImage('$imageUrl')
                      : AssetImage('assets/no-image.png')),
                )),
            Container(
              padding: EdgeInsets.all(6),
              width: sizeW * .4,
              height: sizeH * .2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Pizza Infinite',
                    style: TextStyle(color: Colors.red[600], fontSize: 21),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text('S/ 99.99', style: TextStyle(color: Colors.orange[800])),
                  // incompleto mostrar mas texto en scroll
                  SizedBox(
                    height: 10,
                  ),
                  Text(' Pizza francesa, Ham, Cheese, Pepper', softWrap: true),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
