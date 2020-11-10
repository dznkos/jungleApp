import 'package:flutter/material.dart';

class CategoriaTitulo extends StatelessWidget {
  final Color color;
  final String title;
  final String route;

  const CategoriaTitulo({Key key, this.color, this.title, this.route})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: this.color,
      onPressed: () {
        Navigator.pushNamed(context, route);
      },
      shape: BeveledRectangleBorder(),
      child: Center(child: Text(this.title)),
    );
  }
}
