import 'package:flutter/material.dart';
import 'package:jungle_app/widgets/carrousel_pizza.dart';
import 'package:jungle_app/widgets/categoria_general.dart';
import 'package:jungle_app/widgets/categoria_pizza.dart';
import 'package:jungle_app/widgets/fondo_pizza.dart';
import 'package:jungle_app/widgets/page_main.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _hasBeenPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pizza Page',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          )
        ],
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          FondoPizza(),
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                categoriasButtons(),
                imgporCategoria(context),
                categoriasGeneral(),
                CarrouselPizza()
              ],
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Messages'),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
        ),
      ),
    );
  }

  Widget categoriasButtons() {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 10),
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          CategoriaTitulo(
            title: "Pizzas",
            color: Colors.teal,
            route: 'menu',
          ),
          SizedBox(
            width: 5,
          ),
          CategoriaTitulo(
            title: "Vegan",
            color: Colors.greenAccent,
            route: 'home',
          ),
          SizedBox(
            width: 5,
          ),
          CategoriaTitulo(
            title: "Spicy",
            color: Colors.red,
          ),
          SizedBox(
            width: 5,
          ),
          CategoriaTitulo(
            title: "Mini",
            color: Colors.indigo,
          ),
        ],
      ),
    );
  }

  Widget imgporCategoria(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 5),
        height: MediaQuery.of(context).size.height * 0.3,
        width: double.infinity,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.purple,
              ),
              margin: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width * 0.8,
              child: Icon(Icons.image),
            );
          },
        ));
  }

  Widget categoriasGeneral() {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 10),
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          CategoriaGeneral(
            title: "Pizzas",
            color: Colors.white60,
          ),
          SizedBox(
            width: 15,
          ),
          CategoriaGeneral(
            title: "Pasta",
            color: Colors.white60,
          ),
          SizedBox(
            width: 15,
          ),
          CategoriaGeneral(
            title: "Wings",
            color: Colors.white60,
          ),
          SizedBox(
            width: 15,
          ),
          CategoriaGeneral(
            title: "Drinks",
            color: Colors.white60,
          ),
        ],
      ),
    );
  }
}
