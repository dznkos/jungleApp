import 'package:flutter/material.dart';

class CategoriaGeneral extends StatelessWidget {
  final Color color;
  final String title;
  final String assetPath;

  const CategoriaGeneral({Key key, this.color, this.title, this.assetPath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
              color: this.color, borderRadius: BorderRadius.circular(10)),
          child: this.assetPath != null
              ? Image.asset(this.assetPath)
              : Icon(Icons.local_pizza),
        ),
        SizedBox(
          height: 5,
        ),
        Text(this.title)
      ],
    );
  }
}
