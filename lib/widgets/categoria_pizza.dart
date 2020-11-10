import 'package:flutter/material.dart';

class CategoriaTitulo extends StatelessWidget {
  final Color color;
  final String title;
  final String route;

  const CategoriaTitulo({Key key, this.color, this.title, this.route})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: this.color,
      onPressed: () {
        Navigator.pushNamed(context, route);
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Center(child: Text(this.title)),
    );
  }
}
