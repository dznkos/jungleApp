import 'package:flutter/material.dart';

class CategoriaTitulo extends StatelessWidget {
  final Color color;
  final String title;
  final String assetPath;

  const CategoriaTitulo({Key key, this.color, this.title, this.assetPath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: this.color,
      onPressed: () {},
      shape: StadiumBorder(),
      child: this.assetPath != null
          ? Image.asset(this.assetPath)
          : Center(child: Text(this.title)),
    );
  }
}
