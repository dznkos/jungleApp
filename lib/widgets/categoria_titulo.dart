import 'package:flutter/material.dart';

class CategoriaTitulo extends StatelessWidget {
  final Color color;
  final String title;
  final String assetPath;

  const CategoriaTitulo({Key key, this.color, this.title, this.assetPath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 90,
          height: 70,
          decoration: BoxDecoration(
              color: this.color, borderRadius: BorderRadius.circular(10)),
          child: this.assetPath != null ? Image.asset(this.assetPath) : null,
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          this.title,
        )
      ],
    );
  }
}
