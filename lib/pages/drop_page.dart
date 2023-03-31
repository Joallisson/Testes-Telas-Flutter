import 'package:flutter/material.dart';

class DropPage extends StatelessWidget {
  final dropValue = ValueNotifier('');
  final dropOpcoes = ['Audi', 'BMW', 'Ferrari', 'Lamborguini', 'Tesla'];

  DropPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: const Text('DropDown Menu'),
        ),
        elevation: 0,
      ),
      body: Center(
        child: ValueListenableBuilder(
            valueListenable: dropValue,
            builder: (BuildContext context, String value, _) {
              return SizedBox(
                width: 280,
                child: DropdownButtonFormField<String>(
                  isExpanded: true,
                  icon: Icon(Icons.drive_eta),
                  hint: const Text("Escolha a marca"),
                  decoration: InputDecoration(
                    label: const Text("Marca"),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(6)),
                  ),
                  value: (value.isEmpty) ? null : value,
                  onChanged: (escolha) => dropValue.value = escolha.toString(),
                  items: dropOpcoes
                      .map((opcao) => DropdownMenuItem(
                            value: opcao,
                            child: Text(opcao),
                          ))
                      .toList(),
                ),
              );
            }),
      ),
    );
  }
}
