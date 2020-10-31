import 'package:flutter/material.dart';

class PageMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Container(
            height: 200,
            width: double.infinity,
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  width: 100,
                  height: 100,
                  child: Icon(Icons.adb),
                  color: Colors.red,
                );
              },
            )),
        SizedBox(
          height: 5,
        ),
        Container(
            height: 100,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  width: 100,
                  height: 100,
                  child: Icon(Icons.access_time),
                  color: Colors.purple,
                );
              },
            )),
        SizedBox(
          height: 5,
        ),
        Container(
            height: 250,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  width: 300,
                  height: 200,
                  child: Icon(Icons.access_time),
                  color: Colors.green,
                );
              },
            )),
      ]),
    );
  }
}
