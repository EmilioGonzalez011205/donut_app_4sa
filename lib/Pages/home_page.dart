import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomepageState();
}

class _HomepageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.menu,
              color: Colors.grey[800] ,),
          ),
        ),
        //Ícono de la izquierda
      actions: [Padding(
        padding: const EdgeInsets.only(right: 24.0),
        child: Icon(Icons.person),
      )],
      ),
      body: Column(
        children: <Widget>[
        //Texto principal(Text)
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Row(
            children: [
              Text("I want to "),
              Text("Eat",style:TextStyle(
                //Tamaño de letra
                fontSize: 32,
          
                //Negritas
                fontWeight: FontWeight.bold,
          
          
                //Subrayado
                decoration: TextDecoration.underline
              ))
            ],
          ),
        )

        //Pestañas(TabBar)

        //Contenido de pestaña (TabBarView)

        //Carrito(Cart)

        ]


      )
    );
  }
}