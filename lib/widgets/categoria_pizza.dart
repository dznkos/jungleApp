import 'package:flutter/material.dart';

class CategoriaTitulo extends StatelessWidget {
  final Color color;
  final String title;

  const CategoriaTitulo({Key key, this.color, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: this.color,
      onPressed: () {},
      shape: StadiumBorder(),
      child: Center(child: Text(this.title)),
    );
  }
}
