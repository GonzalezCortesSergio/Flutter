import 'package:flutter/material.dart';

class BuscarCercana extends StatefulWidget {
  const BuscarCercana({super.key});

  @override
  State<BuscarCercana> createState() => _BuscarCercanaState();
}

class _BuscarCercanaState extends State<BuscarCercana> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 212, 219, 199),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 232, 255, 204),
        title: const Center(
          child: Text(
            "Gass App",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
        ),
      ),
      body: const Placeholder(),
    );
  }
}
