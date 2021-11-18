import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: First(),
  ));
}

class First extends StatelessWidget {
  const First({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pantalla 1"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Mostrar Pantalla"),
          onPressed: () {
            Navigator.push(
              context, 
              MaterialPageRoute(builder: (context) => const Second()),
            );
          },
        ),
      ),
    );
  }
}

class Second extends StatelessWidget {
  const Second({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pantalla 2"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Atras"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
