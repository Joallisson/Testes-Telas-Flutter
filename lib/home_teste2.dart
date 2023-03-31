//EXEMPLO DE STATEFUL
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeTeste2 extends StatefulWidget {
  const HomeTeste2({super.key});

  @override
  State<HomeTeste2> createState() => _HomeTeste2State();
}

class _HomeTeste2State extends State<HomeTeste2> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Teste de Stateful"),
        ),
        backgroundColor: Colors.primaries[Random().nextInt(Colors.primaries.length)],
      ),
      body: Center(
        child: Text(
          count.toString(),
          style: TextStyle(fontSize: 45),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
