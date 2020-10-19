import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class FondoPizza extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return fondoApp();
  }

  Widget fondoApp(){
    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: FractionalOffset(0.0, 0.8),
              end: FractionalOffset(0.3, 1.0),
              colors: [
                Color.fromRGBO(122, 114, 55, 1.0),
                Color.fromRGBO(172, 114, 55, 1.0)
              ]
          )
      ),
    );

    return Stack(
      children: <Widget>[
        gradiente,
      ],
    );

  }  

  Widget _crearBotonRedondeado( Color color, IconData icono, String texto ) {

    final _containButton = Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        SizedBox( height: 5.0 ),
        CircleAvatar(
          backgroundColor: color,
          radius: 35.0,
          child: Icon( icono, color: Colors.white, size: 30.0 ),
        ),
        Text( texto , style: TextStyle( color: color )),
        SizedBox( height: 5.0 )
      ],
    );

    return  Stack(
      children:[
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaY: 10.0,sigmaX: 10.0) ,
              child: Container(
                  height: 180.0,
                  width: 170,
                  //margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(62, 66, 107, 0.7),
                      borderRadius: BorderRadius.circular(20.0)
                  ),
                  child: _containButton
              ),
            ),
          ),
        ),
      ]
    );
  }


}
