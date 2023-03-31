import 'package:flutter/material.dart';
import 'package:teste_app_flutter/pages/button_page.dart';

void main() {
  runApp(const PrimeiraTela());
}

class PrimeiraTela extends StatelessWidget{
  const PrimeiraTela({ Key? key}): super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Olá Mundo",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ButtonPage(),
    );
  }
}