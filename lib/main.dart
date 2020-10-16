import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Bievenido'),
        ),
        body: Center(
          child: Container(
            child: ListView.builder(
              
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  width: 100,
                  height: 100,
                  child: Icon(Icons.access_time),
                  color: Colors.blueAccent,
                );
              },            
            )
          ),
        ),
      ),
    );
  }
}