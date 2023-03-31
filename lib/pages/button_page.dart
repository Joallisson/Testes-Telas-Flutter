import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:teste_app_flutter/widgets/block_button.dart';

class ButtonPage extends StatefulWidget {
  const ButtonPage({super.key});

  @override
  State<ButtonPage> createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Botão da largura da tela"),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 24),
              child: TextFormField(
                decoration: const InputDecoration(border: OutlineInputBorder()),
              ),
            ),
            BlockButton(icon: Icons.check, label: "Salvar", onPressed: (){}),
          ],
        ),
        ),
    );
  }
}