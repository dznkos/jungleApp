import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:jungle_app/widgets/fondo_pizza.dart';


class PageMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          FondoPizza(),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _titulos(),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: _bottomNavigationBar(context),
    );
  }

  Widget _titulos() {

    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Pizzeria Martucci', style: TextStyle( color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold )),
            SizedBox( height: 10.0 ),
            Text('Classify this transaction into a particular category', style: TextStyle( color: Colors.white, fontSize: 18.0 )),
          ],
        ),
      ),
    );
  }

  Widget _bottomNavigationBar(BuildContext context){

    return Theme(
        data: Theme.of(context).copyWith(
            canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
            primaryColor: Colors.pinkAccent,
            textTheme: Theme.of(context).textTheme.copyWith(
                caption: TextStyle( color: Color.fromRGBO(116, 117, 152, 1.0))
            )
        ),
        child: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                icon: Icon( Icons.calendar_today, size: 30.0,),
                title: Container(),
              ),
              BottomNavigationBarItem(
                icon: Icon( Icons.bubble_chart, size: 30.0,),
                title: Container(),
              ),
              BottomNavigationBarItem(
                icon: Icon( Icons.supervised_user_circle, size: 30.0,),
                title: Container(),
              )
            ]
        )
    );
  }
}