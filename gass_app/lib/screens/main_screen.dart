import 'package:flutter/material.dart';
import 'package:gass_app/screens/buscar_cercana.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: FilledButton(
              style: const ButtonStyle(
                  fixedSize: WidgetStatePropertyAll(Size(250, 20)),
                  backgroundColor:
                      WidgetStatePropertyAll(Color.fromARGB(255, 63, 69, 49))),
              onPressed: () {},
              child: const Text("Buscar gasolinera"),
            ),
          ),
          Center(
            child: FilledButton(
                style: const ButtonStyle(
                    fixedSize: WidgetStatePropertyAll(Size(250, 20)),
                    backgroundColor: WidgetStatePropertyAll(
                        Color.fromARGB(255, 73, 145, 103))),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BuscarCercana()));
                },
                child: const Text("Buscar gasolinera más cercana")),
          )
        ],
      ),
    );
  }
}
