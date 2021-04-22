import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'mi APP Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage();

  @override
  Widget build(BuildContext context) {
    String texto = "Hola mundo de flutter";
    return Scaffold(
      backgroundColor: Colors.grey,

      appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text('Primera App'),
          actions: [
            IconButton(icon: Icon(Icons.add), onPressed: __add )
          ],
      ),

      floatingActionButton:
        FloatingActionButton(
            backgroundColor: Colors.amber,
            child:
              Icon(Icons.ac_unit, color: Colors.black),
            onPressed: __mensaje,
          ),
      drawer: Drawer(),
      endDrawer: Drawer(),


      body:
        Column(

            children: [
              Image.network("https://media1.tenor.com/images/d35679a70d0b0ea47d541475105285a3/tenor.gif?itemid=13024140",
              height: 300,),

              Text(texto, style: TextStyle(
                fontSize: 20,
                color: Colors.amberAccent))]
        ),
    );
  }

  void __mensaje() {
    print("Mensaje desde floating action button");
  }

  void __add() {
    print("Mensaje desde AppBar");
  }
}
