import 'package:flutter/material.dart';
import 'package:flutter_catelogapplication/Pages/widgets/drawer.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center( 
        child: Container(
          child: Text(context.runtimeType.toString()),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
