import 'package:flutter/material.dart';
import 'package:jungle_app/widgets/fondo_pizza.dart';
import 'package:jungle_app/widgets/page_main.dart';

class HomePage extends StatelessWidget {
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
        child: ToggleButtons(
          children: [
            FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              color: Colors.white70,
              onPressed: () {},
              child: Text(
                "Pizzas",
              ),
            ),
            FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              color: Colors.white70,
              onPressed: () {},
              child: Text(
                "Veg",
              ),
            ),
            FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              color: Colors.white70,
              onPressed: () {},
              child: Text(
                "Spicy",
              ),
            ),
            FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              color: Colors.white70,
              onPressed: () {},
              child: Text(
                "Combo",
              ),
            ),
            FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              color: Colors.white70,
              onPressed: () {},
              child: Text(
                "Veg",
              ),
            ),
            FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              color: Colors.white70,
              onPressed: () {},
              child: Text(
                "Spicy",
              ),
            ),
            FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              color: Colors.white70,
              onPressed: () {},
              child: Text(
                "Combo",
              ),
            )
          ],
          isSelected: [
            true,
            false,
            false,
            false,
            false,
            false,
            false,
          ],
          //borderRadius: BorderRadius.circular(25),
          //borderWidth: 5,
          borderColor: Colors.white,
          //selectedBorderColor: Colors.cyan,
        ));
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

  Widget categorias2Buttons() {
    return SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 10),
        scrollDirection: Axis.horizontal,
        child: ToggleButtons(
          children: [
            FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              color: Colors.white70,
              onPressed: () {},
              child: Text(
                "Pizzas",
              ),
            ),
            FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              color: Colors.white70,
              onPressed: () {},
              child: Text(
                "Veg",
              ),
            ),
            FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              color: Colors.white70,
              onPressed: () {},
              child: Text(
                "Spicy",
              ),
            ),
            FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              color: Colors.white70,
              onPressed: () {},
              child: Text(
                "Combo",
              ),
            ),
            FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              color: Colors.white70,
              onPressed: () {},
              child: Text(
                "Veg",
              ),
            ),
            FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              color: Colors.white70,
              onPressed: () {},
              child: Text(
                "Spicy",
              ),
            ),
            FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              color: Colors.white70,
              onPressed: () {},
              child: Text(
                "Combo",
              ),
            )
          ],
          isSelected: [
            true,
            false,
            false,
            false,
            false,
            false,
            false,
          ],
          //borderRadius: BorderRadius.circular(25),
          //borderWidth: 5,
          borderColor: Colors.white,
          //selectedBorderColor: Colors.cyan,
        ));
  }
}
