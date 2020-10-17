import 'package:flutter/material.dart';

class PizzaDraw extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.red
          )
        ],
      ),
    );
  }
}