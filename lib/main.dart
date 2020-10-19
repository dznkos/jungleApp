import 'package:flutter/material.dart';
import 'package:jungle_app/pages/login_page.dart';
import 'package:jungle_app/pages/shopcart_page.dart';
import 'package:jungle_app/pages/home_page.dart';
import 'package:jungle_app/pages/menu_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shopify App',
      initialRoute: '/',
      routes: {
        '/'       : (_) => LoginPage(),
        'home'    : (_) => HomePage(),
        'menu'    : (_) => MenuPage(),
        'carrito' : (_) => ShopCartPage(),
      }, 
    );
  }
}