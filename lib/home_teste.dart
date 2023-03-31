//EXEPLO DE STATELESS
import 'package:flutter/material.dart';

class HomeTeste extends StatelessWidget {
  const HomeTeste({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Olá Mundo App Bar"),
          ),
        ),
        body: Center(
          child: Text("Olá Mundo Body"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ));
  }
}
